post '/questions' do

end

get '/questions/new' do
  if request.xhr?
    erb :"questions/_new", layout: false
  end
end
