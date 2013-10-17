class GymsController < ApplicationController
  def index
    @gyms = Gym.all
  end

  def show
    id = params[:id]
    @gym = Gym.find(id)
  end

  def edit
    id = params[:id]
    @gym = Gym.find(id)
  end

  def update
    id = params[:id]
    gym = Gym.find(id)
    gym.name = params[:name]
    gym.save
    redirect_to "/gyms/#{id}"
  end

  def new #sends users to the form that gives tem

  end

  def create  #actually saving the info to the database
    gym = Gym.new
    gym.name = params[:name]
    gym.save
    redirect_to '/gyms'
  end



end
