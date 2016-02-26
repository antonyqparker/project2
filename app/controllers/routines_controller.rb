get '/routines' do
  authorize!
  @routines = Routine.all
  erb :'routines/index'
end


# NEW
get '/routines/new' do
  authorize!
  @exercises = Exercise.all
  @routines = Routine.new
  erb :'routines/new'
end

# CREATE
post '/routines' do
  authorize!
  @routine = Routine.new(params[:routine])
  if @routine.save
    redirect "/routines"
  else
    erb :'routines/new'
  end
end

# SHOW
get '/routines/:id' do
  authorize!
  @routine = Routine.find(params[:id])
  erb :'routines/show'
end

# Edit
get '/routines/:id/edit' do
  authorize!
  @routine = Routine.find(params[:id])
  erb :'routines/edit'
end

#Update
put '/routines/:id' do
  @routine = Routine.find(params[:id])
  if is_users_routine?(@routine) && @routine.update(params[:routine])
    redirect "routines/#{@routine.id}"
  else
    erb :'routines/show'
  end
end

#Delete
delete '/routines/:id/delete' do
  authorize!
  @routine = Routine.find_by_id(params[:id])
  if is_users_routine?(@routine)
    @routine.delete
  end
  redirect to "/routines"
end


