class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :set_carer, only: %i[new create]
  before_action :set_patient, only: %i[new show]

  def new
    if @carer.id == current_user
      flash[:danger] = 'You cannot book yourself!'
      redirect_to :back
    else
      @booking = Booking.new
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @patient = Patient.where(user_id: current_user.id)[0]
    @booking.patient_id = @patient.id
    @booking.carer_id = @carer.id
    @booking.patient_confirmed = true
    if @booking.save
      flash[:notice] = "Booking request successfully created."
      redirect_to booking_call_path(@booking.id)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @booking.update(booking_params)
      redirect_to carer_path(@booking.carer_id)
      flash[:notice] = "Booking successfully updated"
    else
      render 'edit'
    end
  end

  def index
    start_date = params.fetch(:start_date, Date.today).to_date
    @bookings = Booking.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week, carer_id: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
    @patient = Patient.find(@booking.patient_id)
    @health_conditions = JSON.parse(@patient.health_conditions)
    @carer = Carer.find(@booking.carer_id)
    @specialty = JSON.parse(@carer.specialty)
  end

  def call
    @booking = Booking.find(params[:booking_id])
    @token = generate_token(@booking)
  end

  def map
    @booking = Booking.find(params[:booking_id])
    @patient = Patient.find(@booking.patient_id)
    @markers = [{lat: @patient.latitude, lng: @patient.longitude}]
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to carer_path(@booking.carer_id), notice: "Booking successfully deleted" }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:carer_id, :patient_id, :start_date, :end_date, :patient_confirmed, :carer_confirmed)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_carer
    @carer = Carer.find(params[:carer_id])
  end

  def set_patient
    @patient = current_user
  end

  def generate_token(booking)
    # Create an Access Token
    token = Twilio::JWT::AccessToken.new ENV['ACCOUNT_SID'], ENV['SID'], ENV['KEY_ID'], [],
        ttl: 14400,
        identity: current_user.email
    # Grant access to Video
    grant = Twilio::JWT::AccessToken::VideoGrant.new
    grant.room = booking.url_room
    token.add_grant grant
    # Serialize the token as a JWT
    token.to_jwt
  end
end
