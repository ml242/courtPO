class GymsController < ApplicationController

  def index
    @gyms = Gym.all
  end

  def new
  end

  def create
    g1 = Gym.create(
      :name => params[:name],
      :game_version => params[:game_version]
    )
    redirect_to("/gyms/#{g1.id}")
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
    g1 = Gym.find(id)
    g1.name = params[:name]
    g1.game_version = params[:game_version]
    g1.save
    redirect_to("/gyms/#{id}")
  end

  def destroy
    id = params[:id]
    Gym.find(id).destroy
    redirect_to('/gyms')
  end

end
