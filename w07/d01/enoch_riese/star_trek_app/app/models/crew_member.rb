# == Schema Information
#
# Table name: crew_members
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  shirt_color  :string(255)      default("red")
#  on_ship      :boolean          default(TRUE)
#  star_ship_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class CrewMember < ActiveRecord::Base
  attr_accessible :name, :on_ship, :star_ship_id, :shirt_color
  belongs_to :star_ship
end
