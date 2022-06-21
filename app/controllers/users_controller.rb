class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update]

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to root_path # appropriate path
    else
      render 'edit'
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
