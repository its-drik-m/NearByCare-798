class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(users)
    edit_user_path(current_user.id)
  end
end
