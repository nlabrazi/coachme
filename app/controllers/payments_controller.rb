class PaymentsController < ApplicationController

  def new
    @payment = Payment.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @payment = Payment.new(payment_params)
    @payment.booking = Booking.find(params[:booking_id])
    @payment.user = current_user
    if @payment.save!
      redirect_to coach_activity_path(@payment.booking.coach_activity), notice: 'Votre paeiment a été éffectué. Merci!'
    else
      flash[:alert] = "Oups! Une erreur est survenue."
      render :new
    end
  end

  private

  def payment_params
    params.require(:user_id, :booking_id)
  end

end
