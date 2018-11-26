class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :mood, :country_id
  belongs_to :country
end
