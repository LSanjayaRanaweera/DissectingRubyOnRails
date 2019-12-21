class ApplicationController < ActionController::Base
	##This line was ONLY present in Tutorial as a Default setting!!
	##Added just to mirror the code!! 
	protect_from_forgery with: :exception 
    
    include DeviseWhitelist 
    include SetSource

    

end
