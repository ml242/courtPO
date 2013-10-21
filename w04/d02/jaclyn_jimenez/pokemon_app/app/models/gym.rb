class Gym < ActiveRecord::Base
  attr_accessible :name

  has_many :trainers

end
