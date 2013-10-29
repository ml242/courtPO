class Purchase < ActiveRecord::Base
   attr_accessible :title, :body

   belongs_to :song
   belongs_to :user
end
