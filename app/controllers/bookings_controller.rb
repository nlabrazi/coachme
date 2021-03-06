class BookingsController < ApplicationController
  before_action :authenticate_user!

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
