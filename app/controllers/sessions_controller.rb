#get the login form
get '/login' do 
  @user = User.new
  erb :'sessions/new'
end

post '/login' do 
  user = User.find_by_username(params[:user][:username])
  # if there is a user, check their password is correct
  if user && user.authenticate(params[:user][:password])
    #log the user in (use " " if we use #{})
    session[:user_id] = user.id
    flash[:success] = "Welcome!"
    redirect "users/#{user.id}"
  # otherwise render the login form again
  else
    flash[:danger] = "Username or password incorrect"
    redirect "/login"
  end
end
