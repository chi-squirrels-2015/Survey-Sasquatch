get "/" do
  @surveys = Survey.all
  erb :index
end

get "/login" do
  erb :'users/profile'
end

post "/login" do
  user = User.find_by(email: params[:email])

  if user && user.password == params[:password]
    session[:id] = user.id
    redirect 'users/profile'
  else
    @error = "Bad Monkey!"
    redirect '/'
  end
end

get "/logout" do
  session.delete(:id)
  redirect "/"
end
