class CoachActivitiesController < ApplicationController

  def new
    @coach_activity = CoachActivity.new
  end

  def show
    @coach_activity = CoachActivity.find(params[:id])
    @booking = Booking.new
    @bookings = Booking.where(coach_activity_id: @coach_activity.id)
    @coach = @coach_activity.user
    @bookings_datetime = @bookings.map do |booking|
      {
        from: booking.start_time,
        to:   booking.end_time
      }
    end
  end

    def create
    @coach_activity = CoachActivity.new(coach_activity_params)
    @coach_activity.user = current_user
    if @coach_activity.save
      redirect_to coach_activity_path(@coach_activity)
    else
      render :new
    end
  end

  private

  def coach_activity_params
    params.require(:coach_activity).permit(:activity_id, :capacity, :start_time, :end_time, :price)
  end
end
