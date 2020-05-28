class CoachActivity < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many   :bookings


  include PgSearch::Model
  pg_search_scope :search_by_activity,
    associated_against: {
      activity: [ :name, :description ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
