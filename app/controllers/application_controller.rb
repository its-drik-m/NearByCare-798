class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :index
  before_action :configure_permitted_parameters, if: :devise_controller?
# before_action :set_time_zone, if: :user_signed_in?

# private

#   def set_time_zone
#     Time.zone = current_user.time_zone
#   end

  def after_sign_in_path_for(_users)
    if current_user.carer?
      carer_path(current_user.id)
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
