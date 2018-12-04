class Experience < ApplicationRecord
    has_many :user_experiences
    has_many :likes
    # has_many :likers, through: :likes, source: :user
    belongs_to :user
    belongs_to :country
end
