class AddColumnParticipantToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :participant_number, :integer
  end
end
