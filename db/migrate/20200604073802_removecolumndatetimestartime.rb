class Removecolumndatetimestartime < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :start_time
    remove_column :bookings, :end_time
    change_column :bookings, :date_time, :datetime
  end
end
