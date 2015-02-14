
### SURVEY CREATOR ###

# Show all of a user's created surveys



get '/surveys/new' do

  erb :'surveys/new'
end

get '/profile/surveys' do
  @surveys = Survey.find_by(name: params[:name])
end

get '/surveys/:id/edit' do
  @survey = Survey.find(params[:id])

  if session[:id] == @survey.creator_id
    erb :'surveys/template'
  else
    redirect '/'
  end
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])

  if session[:id] == @survey.creator_id
    erb :'surveys/show'
  else
    erb :'surveys/take'
  end
end

post '/surveys' do
  @survey = Survey.new(title: params[:title], creator: User.find(session[:id]))

  if @survey.save
    @survey
    erb :"surveys/new"
  end
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
  erb :'surveys/show'
end

get '/finish' do
  erb :'surveys/finish'
end





