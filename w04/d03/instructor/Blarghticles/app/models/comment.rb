class Comment < ActiveRecord::Base
  attr_accessible :body
  belongs_to :article

  # comment isn't valid without an associated article,
  # and body shouldn't be blank
  validates :article_id, :body, :presence => true
end