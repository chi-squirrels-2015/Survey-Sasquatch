class Response < ActiveRecord::Base
  belongs_to :users
  belongs_to :choice
end
