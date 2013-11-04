# == Schema Information
#
# Table name: star_ships
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  shield_strength :integer          default(100)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class StarShip < ActiveRecord::Base
  attr_accessible :name, :shield_strength
  has_many :crew_members
end
