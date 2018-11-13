class LogSerializer < ActiveModel::Serializer
  attributes :id, :entry_date, :noon_location, :narrative, :weather, :fuel_consumed, :logbook_id, :trip_id
  belongs_to :logbook
end
