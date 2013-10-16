# == Schema Information
#
# Table name: gyms
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Gym < ActiveRecord::Base
  attr_accessible :name, :location
  has_many :trainers
end
