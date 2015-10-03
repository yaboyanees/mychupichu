class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

	private
		def configure_permitted_parameters
			devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
			devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name, :profile_url) }
			devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :name, :profile_url) }
		end
		def user_params
			params.require(:user).permit(:email, :password, :password_confirmation, :name, :profile_url)
		end
  	protected
  		def authenticate_user!
    		redirect_to root_path unless user_signed_in?
 		end
end