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
    @coach_activity = CoachActivity.find(params[:coach_activity_id])
    @coach = @coach_activity.user
    @booking =  Booking.find(params[:booking_id])
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
        redirect_to coach_activity_bookings_url(@coach_activity, booking_id: @booking.id)
      else
        render "coach_activities/show"
      end
  end

  def update

  end

  def validate
    @booking = Booking.find(params[:booking_id])
    @booking.update(status: "Accepted")
    redirect_to dashboard_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:duration, :start_time, :end_time, :participant_number)
  end

end
