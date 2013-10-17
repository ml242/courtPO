class Senator < ActiveRecord::Base
  attr_accessible :name :state_name
  belongs_to(:state)
end