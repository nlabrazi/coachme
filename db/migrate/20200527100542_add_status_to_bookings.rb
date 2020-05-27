class AddStatusToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :status, :string
    remove_column :users, :location
    add_column :users,:location, :integer
  end
end
