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

require 'test_helper'

class CrewMemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
