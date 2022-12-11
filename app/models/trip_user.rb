class TripUser < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  has_many :schedules
end
