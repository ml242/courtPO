# == Schema Information
#
# Table name: titles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  type       :string(255)
#  poster     :text
#  plot       :text
#  imdbID     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Title < ActiveRecord::Base
  attr_accessible :imdbID, :plot, :poster, :title, :kind
  has_many :watch_items
  has_many :reviews
  has_many :users, :through => :watch_items
end
