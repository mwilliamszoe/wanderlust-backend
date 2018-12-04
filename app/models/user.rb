class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
  has_many :experiences
  has_many :likes
  has_many :liked_experiences, through: :likes, source: :experience
end
