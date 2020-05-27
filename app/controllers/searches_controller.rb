class SearchesController < ApplicationController
  def search
    if params[:query].present?
      @users = User.by_activity(params[:query])
    else
      @users = User.all
    end
  end

  def browse
    @activities = Activity.all
  end
end
