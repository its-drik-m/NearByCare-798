class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_param)
  # Only patients will be able to create a new booking, so no need to compare for role
  # if @current_user.patient?
    @booking.patient_id = @current_user.id
    @booking.carer_id = params[:booking][:carer_id]
    @booking.patient_confirmed = true
    # else
    #   @booking.carer_id = @current_user.id
    #   @booking.patient_id = params[:booking][:patient_id]
    #   @booking.carer_confirmed = true
    # end
    @booking.call_confirm = # call confirm variable
    if @booking.save
      redirect_to carer_path(@booking.carer_id) # some appropriate path
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
    params.require(:booking).permit(:start_date, :end_date, :carer_id, :patient_id, :call_confirm, :patient_confirmed, :carer_confirmed)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
