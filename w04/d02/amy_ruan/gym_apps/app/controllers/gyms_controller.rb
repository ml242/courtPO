class GymsController < ApplicationController
  def index
    @gyms = Gym.all
  end

  def new
  end

  def create
  end

  def show
    id = params[:id]
    @gym = Gym.find(id)
  end

  def delete
    @id = params[:id]
    @id.destroy
  end

  def edit
  end

  def update
  end


end
