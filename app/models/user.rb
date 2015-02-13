class User < ActiveRecord::Base
  has_many :created_surveys, class_name: "Survey", foreign_key: :creator_id
  has_many :responses

  validates :name, {length => 3, :message => "must have at least 3 characters!"
  validates :entered_password, :length => {:minimum => 6}
  validates :email, :uniqueness => true, :format => /.+.@+\..+/

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(pass)
    @entered_password = pass
    @password = Password.create(pass)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    return user if user && (user.password == password)
  end

end
