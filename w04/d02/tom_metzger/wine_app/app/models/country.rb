class Country < ActiveRecord::Base
  attr_accessible :name, :designation

  has_many :regions
end
