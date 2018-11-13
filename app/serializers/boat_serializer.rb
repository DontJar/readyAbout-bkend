class BoatSerializer < ActiveModel::Serializer
  attributes :id, :name, :length, :home_port, :user_id
  belongs_to :user
  has_many :logbooks
  has_many :logs, through: :logbooks
end
