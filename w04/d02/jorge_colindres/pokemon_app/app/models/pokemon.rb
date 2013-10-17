class Pokemon < ActiveRecord::Base
  attr_accessible :name, :gym_id
  belongs_to :trainer
end
