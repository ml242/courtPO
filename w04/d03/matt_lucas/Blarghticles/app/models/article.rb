class Article < ActiveRecord::Base
    attr_accessible :title, :author, :body, :article_id
    has_many :comments
end