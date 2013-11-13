class Album < ActiveRecord::Base
   attr_accessible :title, :body

   has_one :artist
end
