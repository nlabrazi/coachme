class AddColomnDateTimeToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :date_time, :date
  end
end
