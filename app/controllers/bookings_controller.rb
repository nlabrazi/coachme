class BookingsController < ApplicationController
  before_action :set_booking

  def index
    @user = User.find(params[:user_id])
    @bookings = Booking.all
  end

  def show
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new(booking_params)
  end

  def update

  end

  def create

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
    params.require(:booking).permit(:sum_price, :bill, :duration)
  end

end
