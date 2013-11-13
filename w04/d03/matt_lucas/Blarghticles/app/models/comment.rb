class Comment < ActiveRecord::Base
  attr_accessible :username, :body, :article_id
  belongs_to :article
end