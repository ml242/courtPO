class Article < ActiveRecord::Base
  attr_accessible :body, :title
  # article's title, and body shouldn't be blank
  validates :body, :title, :presence => true

  # :dependent => :destroy specifies that the comments
  # belonging to an article should be deleted from the database
  # if the article is destroyed.
  has_many :comments, :dependent => :destroy
end