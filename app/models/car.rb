class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :cost_per_day, presence: true
  validates :user_id, presence: true
end
