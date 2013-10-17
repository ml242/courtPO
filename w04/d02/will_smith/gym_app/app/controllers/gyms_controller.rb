class GymsController < ApplicationController

  def index
    @gyms = Gym.all
  end

  def show
    id = params[:id]
    # render :text => "This will show the information of a single gym with id #{id}"
    @gym = Gym.find(id)
  end

  def new
    gym = Gym.new
  end

  def create
    gym = Gym.new
    gym.name = params[:name]
    gym.save
    redirect_to("/gyms")
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
    redirect_to("/gyms/#{id}")
  end

  def destroy
    id = params[:id]
    @gym = Gym.find(id)
    @gym.destroy
    redirect_to("/gyms")
  end

end
