class LogbookSerializer < ActiveModel::Serializer
  attributes :id, :date_began, :boat_id
  belongs_to :boat
  has_many :logs
end
