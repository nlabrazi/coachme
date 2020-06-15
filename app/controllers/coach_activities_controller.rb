class CoachActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @coach_activities = CoachActivity.all
    # @coach_activities.activity.name = Activity.name
    if params[:order] == "price"
      @coach_activities = @coach_activities.order(price: :asc)
    elsif params[:order] == "rating"
      @coach_activities = @coach_activities.order(rating: :desc)
    end

    if params[:query]
      @coach_activities = @coach_activities.search_by_activity(params[:query])
          #test markers
          #@users = User.coach.geocoded
          @markers = @coach_activities.map(&:user).map do |user|
            {
              lat: user.latitude,
              lng: user.longitude,
              infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
              image_url: helpers.asset_url("dumbell.svg"),
              id: user.id
            }
          end
        end
      end

      def new
        @coach_activity = CoachActivity.new
      end

      def show
        @coach_activity = CoachActivity.find(params[:id])
        @booking = Booking.new
        @bookings = Booking.where(coach_activity_id: @coach_activity.id)
        @coach = @coach_activity.user
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
        params.require(:coach_activity).permit(:activity_id, :capacity, :start_date, :end_date, :price)
      end
    end
