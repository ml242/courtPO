# == Schema Information
#
# Table name: pieces
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  birth      :date
#  location   :string(255)
#  latitude   :float
#  longitude  :float
#  alive      :boolean          default(TRUE)
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Piece < ActiveRecord::Base
  attr_accessible :name, :birth, :alive, :url, :location

  acts_as_gmappable :process_geocoding => false

  def gmaps4rails_address
   self.location
 end

# def gmaps4rails_marker_picture
#   {
#    "picture" => "/images/s2.jpeg",
#    "width" => 20,
#    "height" => 20,
#    "marker_anchor" => [ 5, 10],
#    "shadow_picture" => "/images/s2.jpeg" ,
#    "shadow_width" => "110",
#    "shadow_height" => "110",
#    "shadow_anchor" => [5, 10],
#   }
# end

geocoded_by :location
after_validation :geocode, :if => :location_changed?
belongs_to :artist
has_many :pics
has_many :favorites
has_many :comments
has_many :commenters, :through => :comments
has_many :users, :through => :favorites
end
