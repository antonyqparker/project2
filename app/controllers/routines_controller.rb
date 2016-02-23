get '/routines' do
  # authorize!
  @routines = Routine.all
  erb :'routines/index'
end


# NEW
get '/routines/new' do
  # authorize!
  @exercises = Exercise.all
  @routines = Routine.new
  erb :'routines/new'
end

# CREATE
post '/routines' do
  authorize!
  @routine = Routine.new(params[:routine])
  if @routine.save
    @routine.user = current_user
    redirect "/routines"
  else
    erb :'routines/new'
  end
end

get '/routines/:id' do
  # authorize!
  @routines = Routine.find(params[:id])
  erb :'routines/show'
end