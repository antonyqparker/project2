# INDEX
get '/users' do
  authorize!
  @users = User.all
  erb :'users/index'
end

# NEW
get '/users/new' do
  authorize!
  @user = User.new
  erb :'users/new'
end

# CREATE
post '/users' do
  authorize!
  @user = User.new(params[:user])
  if @user.save
    redirect "/users"
  else
    erb :'users/new'
  end
end

# Show
get '/users/:id' do
  authorize!
  @user = User.find(params[:id])
  erb :'users/show'
end

# Edit
get '/users/:id/edit' do
  authorize!
  @user = User.find(params[:id])
  erb :'users/edit'
end
