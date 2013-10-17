class Trainer < ActiveRecord::Base
  attr_accessible :name, :trainer_id
  has_many :pokemon
  belongs_to :gym
end
