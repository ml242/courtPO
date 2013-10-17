class
  GymsController < ApplicationController

  # GET '/programmers'
  def index
    @gyms = Gym.all
  end

  # GET '/programmers/:id'
  def show
    id = params[:id]
    @gym = Gym.find(id)
  end

end