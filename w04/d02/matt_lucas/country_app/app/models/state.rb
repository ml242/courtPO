class State < ActiveRecord::Base
  attr_accessible :name
  belongs_to(:country)
  has_many(:senators)
end