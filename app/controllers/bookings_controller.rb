class BookingsController < ApplicationController
  before_action :authenticate_user!, except: [:notify]

  def index
    @user = User.find(params[:user_id])
    @bookings = Booking.all
  end


  def new
    @booking = Booking.new
  end

   def show
    @booking =  Booking.find(params[:id])
    @coach_activity = @booking.coach_activity
    @coach = @coach_activity.user

  end

  def create
    @booking = Booking.new(booking_params)
    @coach_activity = CoachActivity.find(params[:coach_activity_id])
    @booking.coach_activity = @coach_activity
    @booking.user = current_user
    @booking.coach = @coach_activity.user
    @booking.sum_price = @coach_activity.price * @booking.duration
    @booking.status = "en attente"
      if @booking.save
        Room.create(booking: @booking)
      else
        render "coach_activities/show"
      end

    if @booking
    # send request to PayPal
    values = {
      business: 'sb-cf12q2336620@business.example.com',
      cmd: '_xclick',
      upload: 1,
      notify_url: 'https://coach-me.best/notify',
      amount: @booking.sum_price,
      item_name: @booking.coach.first_name,
      item_number: @booking.id,
      quantity: @booking.duration,
      return: 'https://coach-me.best/dashboard'
    }
    redirect_to "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
    end
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @coach_activity = @booking.coach_activity
    @room = @booking.room
    @review = @booking.reviews
    @booking.reviews.destroy_all
    @room.destroy
    @booking.destroy
    redirect_to dashboard_path
  end

  def validate
    @booking = Booking.find(params[:booking_id])
    @coach_activity = CoachActivity.find(params[:coach_activity_id])
    updated = @booking.update(status: "confirmé")
    respond_to do |format|
      format.html { updated ? (redirect_to dashboard_path) : (render "dashboards/dashboard") }
      format.js
    end
  end

  def notify
    params.permit!
    status_payment = params[:payment_status]

    booking = Booking.find(params[:item_number])

    if status_payment = "Completed"
      booking.update_attributes status_payment: true
    else
      booking.destroy
    end

    render nothing: true
  end

  def refused
    @booking = Booking.find(params[:booking_id])
    @coach_activity = CoachActivity.find(params[:coach_activity_id])
    @booking.status = "refusé"
    @booking.save
    respond_to do |format|
      format.html { updated ? (redirect_to dashboard_path) : (render "dashboards/dashboard") }
      format.js
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:duration, :date_time, :participant_number)
  end

end
