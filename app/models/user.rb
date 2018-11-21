class User < ApplicationRecord
  has_secure_password
  has_many :user_experiences
  has_many :experiences, through: :user_experience
end
