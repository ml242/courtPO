class CrewMember < ActiveRecord::Base
  attr_accessible :name, :on_ship, :star_ship_id, :shirt_color
  belongs_to :star_ship
end
