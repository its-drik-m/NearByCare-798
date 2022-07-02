class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :set_carer, only: %i[new create]
  before_action :set_patient, only: %i[new create]

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
    @booking.patient_id = @patient.id
    @booking.carer_id = @carer.id
    @booking.patient_confirmed = true
    if @booking.save
      flash[:notice] = "Booking successfully done."
      redirect_to carer_path(@booking.carer_id)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    # if current_user.carer?
    #   @booking.carer_id = Carer.find(current_user.id)
    # else
    #   @booking.carer_id = @carer.id
    #   @booking.patient_id = Patient.find(current_user.id)
    # end
    if @booking.update(booking_params)
      respond_to do |format|
        format.html { redirect_to carer_path(@booking.carer_id), notice: "Booking successfully updated" }
      end
    else
      format.html { render 'edit' }
    end
  end

  def index
    start_date = params.fetch(:start_date, Date.today).to_date
    @bookings = Booking.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week, carer_id: current_user)
  end

  def show
    @marker = @patients.geocoded.map do |patient|
      {
        lat: patient.latitude,
        lng: patient.longitude
      }
    end
    @booking = Booking.find(params[:id])
    @token = generate_token(@booking)
  end

  def test
    @booking = Booking.find(params[:booking_id])
    @token = generate_token(@booking)
  end

  def destroy
    @booking.find(booking_params)
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to carer_path(@booking.carer_id), notice: "Booking successfully deleted" }
      format.json { head :no_content }
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
