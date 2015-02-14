get "/" do
  @surveys = Survey.all
  erb :index
end

get "/login" do
  erb :'users/profile'
end

post "/login" do
  user = User.find_by(email: params[:email])

  if user && user.password == params[:password_hash]
    session[:id] = user.id
    puts "hello"
    redirect '/profile'
  else
    @error = "Bad Monkey!"
    puts "Bad Monnkey"
    redirect '/'
  end
end

get "/logout" do
  session.delete(:id)
  redirect "/"
end
