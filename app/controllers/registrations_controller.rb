class RegistrationsController < Devise::RegistrationsController
  # redirecting to role selection after signup

  private

  def after_sign_up_path_for(_resources)
    edit_user_path(current_user.id)
  end
end
