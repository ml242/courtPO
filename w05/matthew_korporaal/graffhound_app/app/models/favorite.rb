# == Schema Information
#
# Table name: favorites
#
#  id         :integer          not null, primary key
#  piece_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Favorite < ActiveRecord::Base

  belongs_to :piece
  belongs_to :user
end
