class ModifyColumnsToBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :start_date
    remove_column :bookings, :end_date
    remove_column :bookings, :price
    add_column :bookings, :sum_price, :integer
    add_column :bookings, :duration, :integer
  end
end
