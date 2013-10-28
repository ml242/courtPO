# == Schema Information
#
# Table name: pics
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  piece_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pic < ActiveRecord::Base
  attr_accessible :url

  belongs_to :piece
end
