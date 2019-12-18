class ApplicationController < ActionController::Base
	##This line was ONLY present in Tutorial as a Default setting!!
	##Added just to mirror the code!! 
	protect_from_forgery with: :exception 

	before_filter :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
		devise_parameter_sanitizer.permit(:account_update, keys:[:name])
	end                 

end
