require "carrierwave/orm/activerecord"
require_relative "../uploaders/image_uploader"

class User < ActiveRecord::Base
  include BCrypt

  has_many :routines

  mount_uploader :photo, ImageUploader

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
  has_secure_password
end