class Response < ActiveRecord::Base
  belongs_to :users
  belongs_to :choice
end


# @response.survey_attempt.survey
# @response.survey_attempt.user
# @response.choice.question


# completion
# submission
# execute

# has_many :survey_attempts
# has_many :attempted_surveys, though: :survey_attempts
