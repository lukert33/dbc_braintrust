class User < ActiveRecord::Base
  validates_presence_of :username, :password

  has_many :votes
  has_many :answers
  has_secure_password

  def authenticate_login(session_params)
    if session_params[:username] == self.username || session_params[:username] == self.email
      self.authenticate(session_params[:password])
    else
      false
    end
  end
end
