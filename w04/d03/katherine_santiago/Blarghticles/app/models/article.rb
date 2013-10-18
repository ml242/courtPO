class Article < ActiveRecord::Base
  attr_accessible :title, :body, :comment_id
  has_many :comments
end
