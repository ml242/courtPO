class PokemonController < ActionController::Base
  def index
    @pokemons = Pokemon.all
  end
  def pokemon
    id = params[:id]
    @pokemon_info = Pokemon.find(id)
  end
end