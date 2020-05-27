class BookingsController < ApplicationController
  #before_action :set_booking

  def index
    @user = User.find(params[:user_id])
    @bookings = Booking.all
  end

  def show
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.coach_activity = CoachActivity.find(params[:coach_activity_id])
    @booking.user = current_user
    @booking.coach = User.find(params[:coach_id])
    @booking.status = "pending"
      if booking.save
        redirect_to coach_activity_bookings_path
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
    params.require(:booking).permit(:sum_price, :bill, :duration, :status, :start_time, :end_time)
  end

end
