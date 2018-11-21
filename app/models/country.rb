class Country < ApplicationRecord
    has_many :experiences
    belongs_to :region
end
