class RegionSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  has_many :countries
end
