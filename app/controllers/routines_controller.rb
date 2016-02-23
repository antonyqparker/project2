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
  # authorize!
  @routines = Routine.new(params[:routine])
  if @routine.save
    redirect "/routines"
  else
    erb :'routines/new'
  end
end