class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update role_switch]

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to root_path # appropriate path
    else
      render 'edit'
    end
  end

  def role_switch
    case @user.role
    when 0 # if user is a carer
      @user.role = 1 # change role in user table for user to acces his last profile setting (carer or patient)
      @user.save
      # if user has a carer profile, proceed to Show page else create carer profile
      if @user.carer.present?
        redirect_to carer_path(@carer)
      else
        redirect_to new_carer_path
      end
    when 1 # if user is a patient
      @user.role = 0 # change role in user table for user to acces his last profile setting (carer or patient)
      @user.save
      # if user has a patient profile, proceed to show page, else create patient profile
      if @user.patient.present?
        redirect_to patient_path(@patient)
      else
        redirect_to new_patient_path
      end
    else
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :role, :carer, :patient)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
