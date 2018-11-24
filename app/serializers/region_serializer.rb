class RegionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :countries
end
