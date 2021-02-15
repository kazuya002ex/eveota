class Venue < ApplicationRecord
  has_many :events

  validates :name, presence: true, length: { maximum: 30 }
  validates :station, presence: true, length: { maximum: 30 }
  validates :location, presence: true, length: { maximum: 65 }
  validates :walk, presence: true, length: { maximum: 3 }
  validates :latitude, presence: true
  validates :longitude, presence: true
end
