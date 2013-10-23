# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  entry      :text
#  piece_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  entry      :text
#  user_id    :integer
#  piece_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ActiveRecord::Base
  attr_accessible :entry

  belongs_to :user
  belongs_to :piece
end
