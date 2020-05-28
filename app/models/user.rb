class User < ApplicationRecord


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  scope :by_activity, -> (activity) {
    self.joins(:activities).where('activities.name = ?',activity)
  }
  scope :coach, -> {where(coach: true)}

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :coach_bookings, class_name: "Booking", foreign_key: "coach_id"
  has_many :coach_activities, dependent: :destroy
  has_many :activities, through: :coach_activities

  has_one_attached :photo

end
