class Article< ActiveRecord::Base
  attr_accessible :title, :body, :comments
  has_many :comments

end
