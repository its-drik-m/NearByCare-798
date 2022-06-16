# class RegistrationsController < Devise::RegistrationsController

#   private

#   def sign_up_params
#     params.require(:user).permit(:last_name, :first_name, :phone_number)
#   end
#   protected

#   def after_sign_up_path_for(resource)
#     'edit_user_path' # Or :prefix_to_your_route
#   end
# end
