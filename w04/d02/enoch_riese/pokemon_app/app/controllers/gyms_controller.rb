class GymsController < ApplicationController
  def index
    @mons = Gym.all
  end
  def create
    Gym.create(name: params[:name])
    redirect_to("/gyms")
  end
  def show
    @mon = Gym.find(params[:id])
  end
  def edit
    @mon = Gym.find(params[:id])
  end
  def update
    mon = Gym.find(params[:id])
    mon.name = params[:name]
    mon.save
    redirect_to("/gyms/#{mon.id}")
  end
  def new
  end
  def destroy
    Gym.delete(params[:id])
    redirect_to("/gyms")
  end
end

