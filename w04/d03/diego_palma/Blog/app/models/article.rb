class Article < ActiveRecord::Base
  attr_accessible :title, :body, :timestamps
  has_many :comments
end