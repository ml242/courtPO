class Trainer < ActiveRecord::Base
  attr_accessible :gym_id, :name
  belongs_to :gym
  has_many :pokemons
end
