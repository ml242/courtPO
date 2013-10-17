class GymsController < ApplicationController

  def index
    @all_gyms = Gym.all
  end

  def show
    id = params[:id]
    @gym = Gym.find id
  end

  def new
  end

  def create
    name = params[:name]

    gym = Gym.create :name => name
    id = gym.id

    redirect_to "/gyms/#{id}"
  end

  def edit
    id = params[:id]
    @gym = Gym.find id
  end

  def update
    id = params[:id]
    name = params[:name]

    gym = Gym.find id
    gym.update_attributes :name => name

    redirect_to "/gyms/#{id}"
  end

  def destroy
    id = params[:id]

    Gym.delete id

    redirect_to '/gyms'
  end
end
