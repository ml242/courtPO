class StarShip < ActiveRecord::Base
  attr_accessible :name, :shield_strength
  has_many :crew_members
end
