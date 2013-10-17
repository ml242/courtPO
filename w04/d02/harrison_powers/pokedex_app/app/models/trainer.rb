# == Schema Information
#
# Table name: trainers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  gym_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trainer < ActiveRecord::Base
  attr_accessible :name, :age, :gym_id
  belongs_to :gym
  has_many :pokemons
end
