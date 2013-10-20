class Comment < ActiveRecord::Base
  attr_accessible :body, :time, :article_id
  belongs_to :article
end