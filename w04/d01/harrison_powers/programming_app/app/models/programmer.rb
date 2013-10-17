# == Schema Information
#
# Table name: programmers
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  github_username  :string(255)
#  twitter_username :string(255)
#  img_url          :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Programmer < ActiveRecord::Base
  attr_accessible :name, :github_username, :twitter_username, :img_url
end
