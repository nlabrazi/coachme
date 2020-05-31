class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :coach_activity
  belongs_to :coach, class_name: "User"

  has_many :user_reviews
end
