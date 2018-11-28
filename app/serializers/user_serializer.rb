class UserSerializer < ActiveModel::Serializer
  has_many :user_experiences
  has_many :experiences, through: :user_experience
  attributes :id, :name, :email
end
