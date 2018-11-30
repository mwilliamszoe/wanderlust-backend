class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :user_experiences
  has_many :experiences, through: :user_experiences
end
