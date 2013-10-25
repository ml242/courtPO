class Article < ActiveRecord::Base
    attr_accessible :title, :author, :body
    has_many :comments
end