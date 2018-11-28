class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :mood, :country_id
  belongs_to :country
  has_many :user_experiences
  has_many :users, through: :user_experience
end
