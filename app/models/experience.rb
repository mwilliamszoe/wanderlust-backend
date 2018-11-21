class Experience < ApplicationRecord
    has_many :user_experiences
    has_many :users, through: :user_experience
    belongs_to :country
end
