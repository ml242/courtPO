class LocationController < ApplicationController
  def index
    raise
    if params[:search].present?
      @locations = Location.near(params[:search], 1, :order => :distance)
    else
      @locations = Location.all
    end
  end


  def show

  end
end