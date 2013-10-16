class Country < ActiveRecod::Base
  attr_accessible :name
  has_many(:states)
end