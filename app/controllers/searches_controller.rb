class SearchesController < ApplicationController
  def search
    if params[:query].present?
      @activities = Activity.where(name: params[:query])
    else
      @activities = Activity.all
    end
  end
end
