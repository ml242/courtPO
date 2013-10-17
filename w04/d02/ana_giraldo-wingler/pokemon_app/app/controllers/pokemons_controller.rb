class PokemonsController < ApplicationController

  # GET '/programmers'
  def index
    @pokemons = Pokemon.all
  end

  # GET '/programmers/:id'
  def show
    id = params[:id]
    @pokemon = Pokemon.find(id)
  end

  def edit
    id = params[:id]
    @pokemon = Pokemon.find(id)
  end

  def update
    id = params[:id]
    name = params[:name]
    trainer_name = params[:trainer_id]
    pokemon = Pokemon.find(id)
    pokemon.name = name
    pokemon.trainer_id = Trainer.where({name: "#{trainer_name}"})
    redirect_to('/pokemons')
  end

  def new
  end

  def add
  end

end