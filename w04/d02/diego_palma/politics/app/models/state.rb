class State < ActiveRecord::Base

  attr_accessible :name, :state_id
  belongs_to :country
  has_many :senators


end
