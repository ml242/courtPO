class Trainer < ActiveRecord::Base
  attr_accessible :name, :gym_id
  has_many :pokemons
end