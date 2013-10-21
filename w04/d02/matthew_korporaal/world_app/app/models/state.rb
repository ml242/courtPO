class State < ActiveRecord::Base
  attr_accessible :name, :motto

  belongs_to :country
end