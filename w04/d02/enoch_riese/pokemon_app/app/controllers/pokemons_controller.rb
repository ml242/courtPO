class PokemonsController < ApplicationController
  def index
    @mons = Pokemon.all
  end
  def create
    Pokemon.create(name: params[:name], level: params[:level], trainer_id: params[:trainer_id])
    redirect_to("/pokemons")
  end
  def show
    @mon = Pokemon.find(params[:id])
  end
  def edit
    @mon = Pokemon.find(params[:id])
    @trainers = Trainer.all
  end
  def update
    mon = Pokemon.find(params[:id])
    mon.name = params[:name]
    mon.level = params[:level]
    mon.moves = params[:moves]
    mon.types = params[:types]
    mon.trainer_id = params[:trainer_id]
    mon.save
    redirect_to("/pokemons/#{mon.id}")
  end
  def new
    @trainers = Trainer.all
  end
  def destroy
    Pokemon.delete(params[:id])
    redirect_to("/pokemons")
  end
end
