class Boat < ApplicationRecord
  belongs_to :user
  has_many :logbooks
  has_many :logs, through: :logbooks
end
