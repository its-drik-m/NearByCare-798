class PatientsController < ApplicationController
  before_action :set_patient, only: %i[show edit update destroy]

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to user_carers_path
    else
      render :new
    end
  end

  def show
    @review = Review.new
    @booking = Booking.new
  end

  def edit; end

  def update
    if @patient.update(patient_params)
      redirect_to user_patient_path(@patient)
    else
      render :edit
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:address, :health_condition)
  end

  def set_patient
    @patient = current_user
  end
end
