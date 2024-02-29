class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :booking_date_start, presence: true
  validates :booking_date_finish, presence: true

  

end
