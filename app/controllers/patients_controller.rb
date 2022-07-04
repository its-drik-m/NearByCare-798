class PatientsController < ApplicationController
  before_action :set_patient, only: %i[show edit update destroy]

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
    @review = Review.new
    @booking = Booking.new
    @patients = Patient.all
    @patient = Patient.find_by_user_id(current_user)
    @health_conditions = JSON.parse(@patient.health_conditions)
    @markers = @patients.geocoded.map do |patient|
      if patient.user_id == current_user.id
        {
          lat: patient.latitude,
          lng: patient.longitude
        }
      end
    end
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
