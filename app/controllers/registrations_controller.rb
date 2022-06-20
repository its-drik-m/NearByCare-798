class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(_users)
    edit_user_path(current_user.id)
  end

  # def after_log_in_path_for(_users)
  #   current_user.role.zero ? carers_path : carer_path
  # end
end
