class BookingsController < ApplicationController
  #before_action :set_booking

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
    @booking.sum_price = @coach_activity.price
    @booking.status = "pending"
      if @booking.save!
        Room.create(booking: @booking)
        redirect_to booking_path(@booking)
      else
        render "coach_activities/show"
      end
  end

  def update

  end

  def validate
    @booking = Booking.find(params[:booking_id])
    @coach_activity = CoachActivity.find(params[:coach_activity_id])
    updated = @booking.update(status: "Accepted")
    respond_to do |format|
      format.html { updated ? (redirect_to dashboard_path) : (render "dashboards/dashboard") }
      format.js
    end
  end

  def refused
    @booking = Booking.find(params[:booking_id])
    @coach_activity = CoachActivity.find(params[:coach_activity_id])
    @booking.status = "Refused"
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
    params.require(:booking).permit(:duration, :start_time, :end_time, :participant_number)
  end

end
