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
  :recoverable, :rememberable, :validatable,
    :omniauthable, :omniauth_providers => [:facebook]
  has_many :bookings, dependent: :destroy
  has_many :coach_bookings, class_name: "Booking", foreign_key: "coach_id"
  has_many :coach_activities, dependent: :destroy
  has_many :activities, through: :coach_activities
  has_many :messages, dependent: :destroy

  has_many :reviews
  has_many :payments

  has_one_attached :photo

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.first_name = auth.info.first_name   # assuming the user model has a name
      user.last_name = auth.info.last_name
      user.photo = auth.info.image # assuming the user model has an image
    end
  end

end
