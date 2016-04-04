
#Check to make sure user logged in for any post method
# before "/users*" do
# 	unless request.get?
# 		unless current_user
# 			redirect '/'
# 		end
# 	end
# end

#Return a page for registration
get '/users/new' do
	erb :'user_signup'
end

#Create a new user
post '/users' do
	@user = User.new(first_name: params[:first_name],
					last_name: params[:last_name],
					email: params[:email],
					password: params[:password])
	if @user.save
		redirect '/'
	else
		redirect '/users/new'
	end
end

#Return a page to login
get '/login' do
	erb :'user_login'
end

#Return homepage after successfull logn
post '/login' do
	@user = User.find_by(email: params[:email])

	if @user && @user.password == params[:password]
		session[:user_id] = @user.id
		redirect '/'
	else
		erb :'user_login'
	end
end

#Logs out user
get '/logout' do
	session.delete(:user_id)
	redirect '/'
end