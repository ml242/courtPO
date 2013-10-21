class PokemonsController < ApplicationController
  def index
    pokemons = Pokemon.all
    @pokemons = pokemons.entries
  end
  def new
  end
  def create
    pokemon = Pokemon.new
    pokemon.name = params[:name]
    pokemon.trainer_id = params[:trainer_id].to_i
    pokemon.save
    redirect_to('/pokemons')
  end
  def show
    id = params[:id].to_i
    @pokemon = Pokemon.find(id)
  end
  def edit
    id = params[:id].to_i
    @pokemon = Pokemon.find(id)
    @id = id.to_s
  end
  def update
    id = params[:id].to_i
    name = params[:name]
    trainer_id = params[:trainer_id]
    pokemon = Pokemon.find(id)
    pokemon.name = name
    pokemon.trainer_id = trainer_id
    pokemon.save
    redirect_to("/pokemons/#{id.to_s}")
  end
  def destroy
    id = params[:id].to_i
    pokemon = Pokemon.find(id)
    pokemon.destroy
    redirect_to("/pokemons")
  end





end