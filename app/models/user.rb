class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :coach_bookings, class_name: "Booking", foreign_key: "coach_id"
  has_many :coach_activities
  has_many :activities, through: :coach_activity

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true


  include PgSearch::Model
  pg_search_scope :search_by_name,
  against: [ :last_name ],
  using: {
    tsearch: { prefix: true }
  }
end
