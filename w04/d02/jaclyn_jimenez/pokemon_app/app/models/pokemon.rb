class Pokemon < ActiveRecord::Base
  attr_accessible :name, :nickname, :trainer_id
  belongs_to :trainer
end
