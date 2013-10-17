class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

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
    pokemon = Pokemon.find(id)
    pokemon.name = params[:name]
    pokemon.trainer_id = params[:trainer_id]
    pokemon.save
    redirect_to "/pokemons/#{id}"
  end

  def new #sends users to the form to create a new trainer
  end

  def create  #actually saves the inputs from the form above into the database
    pokemon = Pokemon.new
    pokemon.name = params[:name]
    pokemon.trainer_id = params[:trainer_id]
    pokemon.save
    redirect_to '/pokemons'
  end

end
