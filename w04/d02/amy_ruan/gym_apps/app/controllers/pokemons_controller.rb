class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def new
  end

  def create
  end

  def show
    id = params[:id]
    @pokemons = Pokemon.find(id)
  end

  def delete
    @id = params[:id]
    @id.destroy
  end

  def edit
  end

  def update
  end



end
