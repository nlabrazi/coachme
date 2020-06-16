class CheckoutController < ApplicationController

  def create
    @booking = Booking.find(params[:id])

    if @booking.nil?
      redirect_to dashboard_path
      return
    end

    # Setting up a Stripe Session for payment
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name:        @booking.coach.first_name,
        description: @booking.coach_activity.activity.name,
        amount:      @booking.sum_price,
        currency:    'eur',
        quantity:    @booking.duration
        #image:
      }],
      success_url: checkout_success_url,
      cancel_url: checkout_cancel_url
    )

    respond_to do |format|
      format.js # render create.js.erb
    end
  end

  def success
  end

  def cancel
  end

end
