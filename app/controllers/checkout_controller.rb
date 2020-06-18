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
        currency:    'eur',
        quantity:    @booking.duration,
        amount:      @booking.sum_price,
        name:        @booking.coach.first_name,
        description: @booking.coach_activity.activity.name
        #images:      @booking.coach.photo.key  # --> should work on live server
      }],
      success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}', #UNSECURE FOR PROD (we must use webhook)
      cancel_url: checkout_cancel_url
    )

    respond_to do |format|
      format.js # render create.js.erb
    end
  end

  def success
#    @session = Stripe::Checkout::Session.retrieve(params[:session_id]) #UNSECURE FOR PROD (we must use webhook)
#    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent) #UNSECURE FOR PROD (we must use webhook)
  end

  def cancel
  end

end
