class DashboardsController < ApplicationController
  # after_action :verify_authorized

  def dashboard
    if current_user.coach?
      if current_user.location.nil? || current_user.legal.nil? || current_user.licence.nil?
        redirect_to edit_user_registration_path(current_user)
      end
    end
  end


end
