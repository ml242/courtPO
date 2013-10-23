# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  bio        :text
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artist < ActiveRecord::Base
  attr_accessible :name, :bio

  has_many :pieces
end
