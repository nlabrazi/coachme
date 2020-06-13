class PaymentsController < ApplicationController

  def new
    @payment = Payment.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @payment = Payment.new #(payment_params)
    @payment.booking = Booking.find(params[:booking_id])
    @payment.user = current_user
  end

  # private

  # def payment_params
  #   params.require(:user_id, :booking_id)
  # end

end
