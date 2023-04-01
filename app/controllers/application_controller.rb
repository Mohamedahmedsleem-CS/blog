class ApplicationController < ActionController::Base

	helper_method :current_user, :logged_in?
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def logged_in?
		!!current_user
=begin
		  # we'll know if a user is logged in or not.
		  # by turning current user into a boolean and rails 
		  # i can do that by say bang bang ( !! )
=end
	end
	# restrict actions at controller level 
	def require_user
		if !logged_in?
			flash[:alert] = "You must be logged in to perform that action "
			redirect_to login_path
		end
	end


end
