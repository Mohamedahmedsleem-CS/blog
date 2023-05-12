module ApplicationHelper

	# helper method available in our views
	  include Pagy::Backend
  include Pagy::Frontend

	def gravatar_for(user,options = {size: 80})
	  email_address = user.email.downcase
	  hash = Digest::MD5.hexdigest(email_address)
	  size = options[:size]
	  gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
	  image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block")
	end

	# def current_user
	# 	@current_user ||= User.find(session[:user_id]) if session[:user_id]
	# end

	# def logged_in?
	# 	!!current_user

	# 	  # we'll know if a user is logged in or not.
	# 	  # by turning current user into a boolean and rails 
	# 	  # i can do that by say bang bang ( !! )
	# end
end
