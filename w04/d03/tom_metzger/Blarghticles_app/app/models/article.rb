class Article < ActiveRecord::Base
  attr_accessible :body, :title

  has_many :comments
end
