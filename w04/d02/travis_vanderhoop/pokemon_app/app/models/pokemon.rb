class Pokemon < ActiveRecord::Base
  attr_accessible :name, :trainer_id

  belongs_to :trainer
end
