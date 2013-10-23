class ArtistsController < ApplicationController
  def new
  end

  def create
    @artist = Artist.new
    @artist.name = params[:name]
    @artist.bio = params[:bio]
    @artist.save
    redirect_to :artists
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end
end