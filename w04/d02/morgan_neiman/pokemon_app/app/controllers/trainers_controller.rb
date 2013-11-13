class TrainersController < ApplicationController
  def index
    trainers = Trainer.all
    @trainers = trainers.entries
  end
  def new
  end
  def create
    trainer = Trainer.new
    trainer.name = params[:name]
    trainer.gym_id = params[:gym_id].to_i
    trainer.save
    redirect_to('/trainers')
  end
  def show
    id = params[:id].to_i
    @trainer = Trainer.find(id)
    @pokemons = @trainer.pokemons.entries
  end
  def edit
    id = params[:id].to_i
    @trainer = Trainer.find(id)
    @id = id.to_s
  end
  def update
    id = params[:id].to_i
    name = params[:name]
    gym_id = params[:gym_id].to_i
    trainer = Trainer.find(id)
    trainer.name = name
    trainer.gym_id = gym_id
    trainer.save
    redirect_to("/trainers/#{id.to_s}")
  end
  def destroy
    id = params[:id].to_i
    trainer = Trainer.find(id)
    trainer.destroy
    redirect_to("/trainers")
  end
end
