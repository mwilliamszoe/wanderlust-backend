class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :region_id
  belongs_to :region
  has_many :experiences
end
