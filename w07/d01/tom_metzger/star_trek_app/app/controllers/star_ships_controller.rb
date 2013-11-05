class StarShipsController < ApplicationController
  def index
    @star_ships = StarShip.all
  end
end
