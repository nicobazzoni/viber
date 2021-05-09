
class RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :password, :name, :bio)
  end
  
  
  
  private

  def sign_up_params
  
    params.require(:user).permit(:name, :bio, :first_name, :last_name, :email, :password,)
  end

  def account_update_params
    params.require(:user).permit(:name, :bio, :email, :password, :password_confirmation, :current_password)
  end
end


