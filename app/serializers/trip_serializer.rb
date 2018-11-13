class TripSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :start_point, :destination, :user_id
  belongs_to :user
end
