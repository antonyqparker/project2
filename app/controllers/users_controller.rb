
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
    redirect "/users/:#{@user.id}"
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

put '/users/:id' do
  puts params[:user]
  @user = User.find(params[:id])
  if @user.update(params[:user])
    redirect "/users/#{@user.id}"
  else
    erb :"/users/edit"
  end
end