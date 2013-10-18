class Comment < ActiveRecord::Base
  attr_accessible :body, :article_id
  belongs_to :article
end
