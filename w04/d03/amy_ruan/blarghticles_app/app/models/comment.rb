# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string(255)
#  article_id :integer
#

class Comment < ActiveRecord::Base
  attr_accessible :body, :article_id
  belongs_to :article
end
