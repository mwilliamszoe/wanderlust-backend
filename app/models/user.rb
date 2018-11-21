class User < ApplicationRecord
    has_many :user_experiences
    has_many :experiences, through: :user_experiences
end
