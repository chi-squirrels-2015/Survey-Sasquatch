post '/questions' do

 questions = params[:questions]
 choices = params[:choices]

 questions.each_with_index do |question_content, index|
    question =  Question.create(content: question_content)
    choices[index.to_s].each do |choice_content|
      Choice.create(content: choice_content, question: question)
    end

 end
 redirect '/profile'
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
