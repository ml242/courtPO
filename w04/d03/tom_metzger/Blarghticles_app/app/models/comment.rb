class Comment < ActiveRecord::Base
  attr_accessible :article_id, :title, :body

  belongs_to :article
end
