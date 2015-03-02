class User < ActiveRecord::Base
  include ActiveModel::SecurePassword
  
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :city, presence: true
  validates :state, presence: true
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true 
end
