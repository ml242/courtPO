class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
  end

  def new
    @piece = Piece.new
    @artists = Artist.all
  end

  def create
    @piece = Piece.new(params[:piece])
    artist_name = params[:piece][:artist]
    if Artist.where(:name => artist_name) == []
      #artist not in db, add
      artist = Artist.new
      artist.name = artist_name
          artist.save
    else
      artist = Artist.where(:name => artist_name).first
    end
    @piece.artist = artist
    @piece.save
    redirect_to @piece
  end

  def show
    @piece = Piece.find(params[:id])
    @comment = Comment.new
  end
  def edit
    @piece = Piece.find(params[:id])
  end
  def update
    raise
  end
end