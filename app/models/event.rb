class Event < ApplicationRecord
  belongs_to :venue
  belongs_to :user

  validates :name, presence: true, length: { maximum: 55 }
  validates :start_time, presence: true
  validates :opening_time, presence: true
  validates :performance_date, presence: true
end
