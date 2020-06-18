class AddPaymentStatusToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :status_payment, :boolean
  end
end
