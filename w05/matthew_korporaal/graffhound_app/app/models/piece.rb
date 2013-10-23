

class Piece < ActiveRecord::Base
  attr_accessible :name, :birth, :alive, :url, :location

  #acts_as_gmappable, :process_geocoding => false

  def gmaps4rails_address
   self.location
  end

 geocoded_by :location
 after_validation :geocode, :if => :location_changed?
 belongs_to :artist
 has_many :users, :through => :comments
 has_many :users, :through => :favorites
end
