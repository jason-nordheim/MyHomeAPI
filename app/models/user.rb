class User < ApplicationRecord
  has_secure_password
  has_many :Items 
  has_many :Vendors 
  validates :username, uniqueness: true 
  validates :email, uniqueness: true 
end
