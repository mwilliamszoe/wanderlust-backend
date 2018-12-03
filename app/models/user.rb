class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
  has_many :user_experiences
  has_many :likes
  has_many :experiences, through: :user_experiences
end
