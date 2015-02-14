creator = User.new
creator.password = 'password'
creator.name = "leon"
creator.email = "leon@leon.com"
creator.save

test_survey = Survey.create!(title: "Test Survey", creator_id: creator.id)

question1 = Question.create!(content: "Will this work?", survey: test_survey)
question2 = Question.create!(content: "Are we there yet?", survey: test_survey)

Choice.create!(content: "test response1", question: question1)
Choice.create!(content: "test response2", question: question1)
Choice.create!(content: "test response3", question: question2)
Choice.create!(content: "test response4", question: question2)

joe = User.new
joe.password = 'password'
joe.name = "joe"
joe.email = "joe@joe.com"
joe.save

food_survey = Survey.create!(title: "Favorite Food", creator_id: joe.id)
food_question = Question.create!(content: "What is your favorite food?", survey: food_survey)
Choice.create!(content: "steak", question: food_question)
Choice.create!(content: "pizza", question: food_question)
Choice.create!(content: "salad", question: food_question)

movie_survey = Survey.create!(title: "Favorite Movie", creator_id: joe.id)
movie_question = Question.create!(content: "What is your favorite movie?", survey: movie_survey)
Choice.create!(content: "Gone Girl", question: movie_question)
Choice.create!(content: "Django", question: movie_question)
Choice.create!(content: "Inglorious Bastards", question: movie_question)

sport_survey = Survey.create!(title: "Favorite Sport", creator_id: joe.id)
sport_question = Question.create!(content: "What is your favorite sport?", survey: sport_survey)
Choice.create!(content: "Basketball", question: sport_question)
Choice.create!(content: "Soccer", question: sport_question)
Choice.create!(content: "Football", question: sport_question)
