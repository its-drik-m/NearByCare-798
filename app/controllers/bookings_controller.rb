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
      redirect_to carer_path(@carer.id)
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

  def index; end

  def show; end

  private

  def booking_params
    params.require(:booking).permit(:carer_id, :patient_id, :start_date, :end_date, :patient_confirmed)
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
