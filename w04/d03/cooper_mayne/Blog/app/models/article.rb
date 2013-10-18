class Article < ActiveRecord::Base
  attr_accessible :author, :body, :title
  has_many :comments
end
