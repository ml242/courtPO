class Article < ActiveRecord::Base
  attr_accessible :title, :body, :time
  has_many :comments
end