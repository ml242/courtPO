# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#

class Article < ActiveRecord::Base
  attr_accessible :name, :content, :author_id
  has_many :comments
  belongs_to :author
end
