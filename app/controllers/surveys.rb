
### SURVEY CREATOR ###

# Show all of a user's created surveys



get '/surveys/new' do

  erb :'surveys/new'
end

get '/profile/surveys' do
  @surveys = Survey.find_by(name: params[:name])
end

# Show an individual user's survey

get '/profile/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :'profiles/surveys'
end

### SURVEY TAKER ###

# Show all available surveys

get '/surveys' do
  @surveys = Survey.all
  erb :surveys
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :'surveys/show'
end

post '/surveys' do
  @survey = Survey.new(title: params[:title], creator: User.find(session[:id]))
  puts "hiya!"
  p params
  if @survey.save
    @survey
    erb :"surveys/new"
  end
end

