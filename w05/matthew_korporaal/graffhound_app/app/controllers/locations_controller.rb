class LocationsController < ApplicationController
  def index
    location = Array.new
    @pieces = Piece.all
    @location = Location.new
    @json = @pieces.each.to_gmaps4rails do |piece, marker|
      location_link = view_context.link_to "#{piece.artist.name} - #{piece.name}", piece_path(piece)
      marker.infowindow "<h4><u>#{location_link}</u></h4>
                         <i>#{piece.location}</i><br>
                         <img src='#{piece.pics.first[:url]}'
                         style='max-height: 80px; max-width: 100px;'/>"
    end
  end

  def create
    @location = Location.create(:location => params[:location])
    render :location
  end
end