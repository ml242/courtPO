class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
  end

  def new
    @piece = Piece.new
    @pic = Pic.new
    @artists = Artist.all
  end

  def create
    @piece = Piece.new
    @piece.name = params[:piece][:name]
    @piece.location = params[:piece][:location]
    if params[:artist_name].empty?
      artist_id = params[:piece][:artist_id]
      artist = Artist.where(:id => artist_id).first
    else
      artist = Artist.new
      artist.name = params[:artist_name]
      artist.save
    end
    @piece.artist = artist
    @piece.save
    @pic = Pic.new
    @pic.url = params[:URL]
    @pic.piece = @piece
    @pic.save

    redirect_to @piece
  end

  def show
    @piece = Piece.find(params[:id])
    @comment = Comment.new
    @favorite = Favorite.new
    location = Array.new
    location << {
      'description' => @piece.location,
      'lng' => @piece.longitude,
      'lat' => @piece.latitude
    }
    @gmaps_json = location.to_json
  end

  def edit
    @piece = Piece.find(params[:id])
    @artists = Artist.all
  end
  def update
    raise
  end
end