class User < ActiveRecord::Base
  validates_presence_of :username, :password

  has_many :votes
  has_many :answers
  has_secure_password

  def authenticate_login(username_email, password)
    if username_email == self.username || username_email == self.email
      authenticate(password)
    else
      false
    end
  end
end
