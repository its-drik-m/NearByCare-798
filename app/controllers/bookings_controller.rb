class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_param)
    @booking.carer_id = Carer.find(params[:carer_id])
    @booking.patient_id = current_user.id
    @booking.call_confirm = # call confirm variable
    @booking.parient_confirmed = # parient confirm variable
    @booking.carer_confirmed = # carer confirm variable

    if @booking.save
      redirect_to # some appropriate path
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @booking.update(booking_param)
      redirect_to @booking
    else
      render 'edit'
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  def index; end

  def show; end

  private

  def booking_param
    params.require(:booking).permit(:start_date, :end_date, :carer_id, :patient_id, :call_confirm, :parient_confirmed, :carer_confirmed)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
