class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.piece = Piece.find(params[:piece_id])
    @favorite.save
    redirect_to current_user
  end
end
