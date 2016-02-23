# INDEX
get '/exercises' do
  authorize!
  @exercises = Exercise.all
  erb :'exercises/index'
end

post '/exercises' do
  @routine = Routine.create(params[:routine])
end
