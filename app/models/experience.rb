class Experience < ApplicationRecord
    has_many :user_experiences
    has_many :users through: :experiences
    belongs_to :country
end
