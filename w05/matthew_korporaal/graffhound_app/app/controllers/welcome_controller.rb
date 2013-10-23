class WelcomeController < ApplicationController
  def home
    @piece = Piece.last
  end
end