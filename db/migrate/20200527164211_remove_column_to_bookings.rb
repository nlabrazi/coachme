class RemoveColumnToBookings < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :activity, foreign_key: true
  end
end
