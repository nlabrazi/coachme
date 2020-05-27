class Activity < ApplicationRecord
  has_many :bookings
  has_many :coach_activities

  include PgSearch::Model
  pg_search_scope :search_by_name_desc_cat,
    against: [ :name, :category, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
