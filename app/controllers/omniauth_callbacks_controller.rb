class OmniauthCallbacksController < Devise::OmniauthCallbacksController   
	def facebook     
		@user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)      
		if @user.persisted?       
			sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
			set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
		else
			session["devise.facebook_data"] = request.env["omniauth.auth"]
			redirect_to root_url
		end
	end
	def linkedin     
		@user = User.find_for_linkedin_oauth(request.env["omniauth.auth"], current_user)      
		if @user.persisted?       
			sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
			set_flash_message(:notice, :success, :kind => "Linkedin") if is_navigational_format?
		else
			session["devise.linkedin_data"] = request.env["omniauth.auth"]
			redirect_to root_url
		end
	end
end