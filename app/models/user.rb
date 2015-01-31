class User < ActiveRecord::Base
  validates_presence_of :username

  has_many :votes
  has_many :answers
  has_secure_password
end
