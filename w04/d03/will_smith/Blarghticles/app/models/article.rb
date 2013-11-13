class Article < ActiveRecord::Base
  attr_accessible :title, :body, :text
  has_many :comments
end
