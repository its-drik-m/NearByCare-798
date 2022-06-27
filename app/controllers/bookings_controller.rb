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
    # Only patients will be able to create a new booking, so no need to compare for role
    # if @current_user.patient?
    @booking.patient_id = @patient.id
    @booking.carer_id = @carer.id
    @booking.patient_confirmed = true
    # else
    #   @booking.carer_id = @current_user.id
    #   @booking.patient_id = params[:booking][:patient_id]
    #   @booking.carer_confirmed = true
    # end
    # @booking.call_confirm = # call confirm variable
    if @booking.save
      redirect_to carer_path(@booking.carer_id)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @current_user.carer? && @booking.update(booking_params)
      @booking.carer_id = @current_user.id
      @booking.carer_confirmed = true
      redirect_to carer_path(@booking.carer_id)
    elsif @current_user.patient? && @booking.update(booking_params)
      redirect_to carer_path(@booking.carer_id)
    else
      render 'edit'
    end
  end

  def index
    start_date = params.fetch(:start_date, Date.today).to_date
    @bookings = Booking.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    @bookings = Booking.where(starts_at: start_date.beginning_of_week..start_date.end_of_week)
  end

  def show; end

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
end
