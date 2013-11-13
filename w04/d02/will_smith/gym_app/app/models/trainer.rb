class Trainer < ActiveRecord::Base
  attr_accessible :name, :gym_id

  belongs_to :gym
  has_many :pokemons
end
