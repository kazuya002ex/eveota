class User < ApplicationRecord
  has_secure_password

  has_many :events

  validates :name, presence: true, length: { maximum: 25 }
end
