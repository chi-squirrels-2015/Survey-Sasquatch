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
