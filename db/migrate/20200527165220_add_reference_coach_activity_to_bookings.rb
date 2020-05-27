class AddReferenceCoachActivityToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :coach_activity, foreign_key: true
  end
end
