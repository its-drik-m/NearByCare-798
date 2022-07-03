class PatientsController < ApplicationController
  before_action :set_patient, only: %i[edit update destroy]

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.user_id = current_user.id
    if @patient.save
      redirect_to carers_path
    else
      render :new
    end
  end

  def show
    @patient = Patient.find_by_user_id(current_user)
    @review = Review.new
    @booking = Booking.where(patient_id: @patient.id)
  end

  def edit; end

  def update
    if @patient.update(patient_params)
      redirect_to patient_path(@patient)
    else
      render :edit
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:user_id, :address, health_conditions: [])
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
