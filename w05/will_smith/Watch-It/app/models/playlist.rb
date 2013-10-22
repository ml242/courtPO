# == Schema Information
#
# Table name: playlists
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title_id   :integer
#  watched    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Playlist < ActiveRecord::Base
  attr_accessible :title_id, :user_id, :watched
  belongs_to :title
  belongs_to :user
end
