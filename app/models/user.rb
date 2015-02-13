class User < ActiveRecord::Base
  has_many :created_surveys, class_name: "Survey", foreign_key: :creator_id
  has_many :responses

  validates :password_hash, :length => {:minimum => 6}
  validates :email, :uniqueness => true, :format => /.+@.+\..+/

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(password_hash)
    self.password_hash = @password
  end

end

