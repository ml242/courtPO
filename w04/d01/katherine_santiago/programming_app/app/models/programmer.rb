class Programmer < ActiveRecord::Base
  attr_accessible :name, :twitter_pic, :twitter_username, :github, :company_id

  belongs_to :company
end
