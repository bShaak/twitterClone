module SessionsHelper

	#log in the given user
	#uses session method provided by rails which creates a temp cookie in browser
	def log_in(user)
		session[:user_id] = user.id
	end

	#return the current logged in user
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	#check if a user is logged into the site
	def logged_in?
		!current_user.nil?
	end
end
