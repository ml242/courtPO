class LocationsController < ApplicationController
  def index
    location = Array.new
    @pieces = Piece.all
    @location = Location.new
    @json = @pieces.each.to_gmaps4rails do |piece, marker|
      location_link = view_context.link_to "#{piece.artist.name} - #{piece.name}", piece_path(piece)
  # marker.picture({
  #                 :picture => "http://www.clker.com/cliparts/c/9/m/4/B/d/google-maps-grey-marker-w-shadow.svg",
  #                 :width   => 32,
  #                 :height  => 32
  #                })
      marker.infowindow "<h4><u>#{location_link}</u></h4>
                         <i>#{piece.location}</i><br>
                         <img src='#{piece.pics.first[:url]}'
                         style='max-height: 50px; max-width: 50px;'/>"

    end
  end

  def create
    @location = Location.create(:location => params[:location])
    render :location
  end
end