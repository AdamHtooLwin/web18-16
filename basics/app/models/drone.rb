class Drone < ApplicationRecord
  belongs_to :user
  has_many :nav_logs
end
