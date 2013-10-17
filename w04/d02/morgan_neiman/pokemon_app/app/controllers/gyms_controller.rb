class GymsController < ApplicationController
  def index
    gyms = Gym.all
    @gyms = gyms.entries
  end
  def new
  end
  def create
    gym = Gym.new
    gym.name = params[:name]
    gym.save
    redirect_to('/gyms')
  end
  def show
    id = params[:id].to_i
    @gym = Gym.find(id)
    @trainers = @gym.trainers.entries
  end
  def edit
    id = params[:id].to_i
    @gym = Gym.find(id)
    @id = id.to_s
  end
  def update
    id = params[:id].to_i
    name = params[:name]
    gym = Gym.find(id)
    gym.name = name
    gym.save
    redirect_to("/gyms/#{id.to_s}")
  end
  def destroy
    id = params[:id].to_i
    gym = Gym.find(id)
    gym.destroy
    redirect_to("/gyms")
  end
end