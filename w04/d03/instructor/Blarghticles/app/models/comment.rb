class Comment < ActiveRecord::Base
  attr_accessible :body
  belongs_to :article
  validates_presence_of :article_id, :body
end