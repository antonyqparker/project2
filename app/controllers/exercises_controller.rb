# INDEX
get '/exercises' do
  # authorize!
  @exercises = Exercise.all
  erb :'exercises/index'
end