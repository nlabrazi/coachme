class AddTimetoBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :start_time, :datetime, null: false
    add_column :bookings, :end_time, :datetime, null: false
  end
end
