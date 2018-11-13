class Logbook < ApplicationRecord
  belongs_to :boat
  has_many :logs  
end
