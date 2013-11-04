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

require 'test_helper'

class StarShipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
