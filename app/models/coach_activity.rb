class CoachActivity < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many   :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_activity,
    associated_against: {
      activity: [ :name, :description ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
