require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
  has_secure_password
  has_many :routines
end