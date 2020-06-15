class Booking < ApplicationRecord
  scope :by_coach_activity, -> (coach_activity) {
  self.joins(:bookings).where('bookings = ?',booking)
  }

  belongs_to :payment
  belongs_to :user
  belongs_to :coach_activity
  belongs_to :coach, class_name: "User"

  has_many :reviews
  has_one :room
end
