class SearchesController < ApplicationController
  def search
    if params[:query].present?
      @users = User.search_by_name(params[:query])
    else
      @users = User.all
    end
  end

  def browse
    @activities = Activity.all
  end
end
