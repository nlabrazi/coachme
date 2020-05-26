class SearchesController < ApplicationController
  def search
    if params[:query].present?
      @activities = Activity.search_by_name_desc_cat(params[:query])
    else
      @activities = Activity.all
    end
  end
end
