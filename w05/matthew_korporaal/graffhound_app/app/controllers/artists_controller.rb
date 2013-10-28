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
    location = Array.new
    @location = Location.create(:location => "Flatiron, NY")
    @pieces = Piece.where(:artist_id => @artist.id)
    @json = @pieces.all.to_gmaps4rails do |location, marker|
      location_link = view_context.link_to location.name, piece_path(location)
      marker.infowindow "<h4><u>#{location_link}</u></h4>
      <i>#{location.location}</i>"
    end
  end
end