post '/questions' do
 p params
 questions = params[:questions]
 choices = params[]
end

get '/questions/new' do
  if request.xhr?
    @question_id = params[:num]
    erb :"questions/_new", layout: false
  end
end

get '/questions/choices/new' do
  if request.xhr?
    @question_id = params[:num]
    erb :"choices/_new", layout: false
  end
end
