class ApplicationController < ActionController::Base
	##This line was ONLY present in Tutorial as a Default setting!!
	##Added just to mirror the code!! 
	protect_from_forgery with: :exception 
    
    include DeviseWhitelist 

    before_action :set_source
    def set_source
    	session[:source] = params[:q] if params[:q]
    end     

end
