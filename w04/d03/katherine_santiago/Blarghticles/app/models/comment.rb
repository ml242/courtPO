class Comment < ActiveRecord::Base
  attr_accessible :title, :body, :article_id
  belongs_to :article
end
