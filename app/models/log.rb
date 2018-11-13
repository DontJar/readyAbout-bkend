class Log < ApplicationRecord
  belongs_to :logbook, touch: true
end
