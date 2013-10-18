class Senator < ActiveRecord::Base

  attr_accessible :name, :country_id

  belongs_to :state


end
