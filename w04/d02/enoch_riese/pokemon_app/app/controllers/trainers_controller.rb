class TrainersController < ApplicationController
  def index
    @mons = Trainer.all
  end
  def create
    Trainer.create(name: params[:name], gym_id: params[:gym_id])
    redirect_to("/trainers")
  end
  def show
    @mon = Trainer.find(params[:id])
  end
  def edit
    @mon = Trainer.find(params[:id])
    @gyms = Gym.all
  end
  def update
    mon = Trainer.find(params[:id])
    mon.name = params[:name]
    mon.gym_id = params[:gym_id]
    mon.save
    redirect_to("/trainers/#{mon.id}")
  end
  def new
    @gyms = Gym.all
  end
  def destroy
    Trainer.delete(params[:id])
    redirect_to("/trainers")
  end
end

