class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :region_id
  belongs_to :region
end
