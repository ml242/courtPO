class Senator < ActiveRecord::Base
  attr_accessible :name
  belongs_to(:state)
end