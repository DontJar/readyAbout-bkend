class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar
  has_many :boats
  has_many :trips
  has_many :logbooks, through: :boats
end
