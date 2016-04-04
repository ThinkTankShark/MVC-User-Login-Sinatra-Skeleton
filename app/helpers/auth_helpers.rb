helpers do
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	def user_name
		@current_user.first_name
	end
end