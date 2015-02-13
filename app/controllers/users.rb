# Show form for new users

get '/users/new' do
  erb :'users/new'
end

# Submit form for new user

post '/users/new' do
  p params
  user = User.new
  user.email = params[:email]
  user.password = params[:password]

  if user.save
    session[:id] = user.id
    redirect '/profile'
  else
    redirect '/'
  end

end

# Show user profile
get '/profile' do
  erb :'users/profile'
end
