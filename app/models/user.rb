class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: {case_sensitive: false}
  
  validates :password, presence: true, length: {minimum: 4}
  validates :password_confirmation, presence: true
  validates :password, confirmation: true
  
  validates :first_name, presence: true
  validates :last_name, presence: true
end
