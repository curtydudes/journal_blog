class User < ApplicationRecord
  before_save { self.email = email.downcase}
  #self.email is referencing each object of the userclass
  #it runs the downcase then saves
  validates :username, presence: true,
             uniqueness: {case_sensitive: false}, 
             length: {minimum: 3, maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,   
            uniqueness: {case_sensitive: false},  
            length: {maximum: 100},
            format: { with: VALID_EMAIL_REGEX}

has_many :categories
has_secure_password
end
