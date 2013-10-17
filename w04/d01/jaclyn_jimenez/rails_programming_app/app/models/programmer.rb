class Programmer < ActiveRecord::Base
attr_accessible :name, :twitter_username, :twitter_pic, :company_id

belongs_to :company

end
