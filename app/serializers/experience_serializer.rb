class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :country_id
  has_many :user_experiences
  has_many :users, through: :user_experiences
end
