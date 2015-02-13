# Show form for new users

get '/users/new' do
  erb :'users/new'
end

# Submit form for new user

post '/users' do
  user = User.new
  user.email = params[:email]
  user.password = params[:password]

  if user.save
    session[:id] = user.id
    redirect '/users/profile'
  else
    redirect '/users/new' do
  end

end

# Show user profile
get '/users/profile' do
  erb :'users/profile'
end
