class User < ApplicationRecord
  has_many :boats
  has_many :trips
  has_many :logbooks, through: :boats

  has_secure_password
  
  validates :username, uniqueness: { case_sensitive: false }

end
