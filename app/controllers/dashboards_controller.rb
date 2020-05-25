class DashboardsController < ApplicationController
    def dashboard
    @booking = current_user.booking
  end
end
