class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :index
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(_users)
    if current_user.carer?
      carer_path(Carer.find_by_user_id(current_user.id))
    else
      carers_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name phone_number role carer patient address
                                                         region health_conditions specialty])
  end
end
