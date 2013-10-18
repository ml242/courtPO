class Comment < ActiveRecord::Base
  attr_accessible :article_id, :body
  belongs_to :article
end


