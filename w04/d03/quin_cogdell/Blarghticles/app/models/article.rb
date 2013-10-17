class Article < ActiveRecord::Base
  attr_accessible :title, :body
  has_many :comments, dependent: :destroy

end
