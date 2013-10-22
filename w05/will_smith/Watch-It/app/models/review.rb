# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  body       :text
#  title_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ActiveRecord::Base
  attr_accessible :body, :title_id, :user_id
  belongs_to :user
  belongs_to :title
end
