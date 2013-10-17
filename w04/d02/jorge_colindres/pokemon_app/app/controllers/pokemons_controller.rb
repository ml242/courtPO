class PokemonsController < ApplicationController

  # GET from '/pokemons'
  def index
    @all_pokemons = Pokemon.all
  end

  # GET from '/pokemons/new'
  def new
    @trainers = Trainer.all
  end

  # GET from '/pokemons/:id'
  def show
    id = params[:id]
    @pokemon = Pokemon.find id
  end

  # GET from '/pokemons/:id/edit'
  def edit
    id = params[:id]
    @pokemon = Pokemon.find id
    @trainers = Trainer.all
  end

  # POST from '/pokemons'
  def create
    pokemon_atts = params[:pokemon]

    pokemon = Pokemon.create name: pokemon_atts[:name], trainer_id: pokemon_atts[:trainer]
    id = pokemon.id

    redirect_to "/pokemons/#{id}"
  end

  # PUT from '/pokemons/:id'
  def update
    id = params[:id]
    pokemon_atts = params[:pokemon]

    pokemon = Pokemon.find id
    pokemon.update_attributes name: pokemon_atts[:name], trainer_id: pokemon_atts[:trainer]

    redirect_to "/pokemons/#{id}"
  end

  # DELETE from '/pokemons/:id'
  def destroy
    id = params[:id]

    Pokemon.delete id

    redirect_to '/pokemons'
  end

end
