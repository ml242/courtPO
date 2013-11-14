# == Schema Information
#
# Table name: solutions
#
#  id           :integer          not null, primary key
#  opinion      :text
#  is_judgement :boolean          default(FALSE)
#  score        :integer
#  case_id      :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Solution < ActiveRecord::Base
  acts_as_votable

  attr_accessible :opinion, :score, :is_judgement, :case_id, :user_id

  belongs_to :case
  belongs_to :user

def age
  t = Time.zone.now
  return ((t - self.created_at) / 60)/60
end

def addToScore
  binding.pry
  self.score = self.likes.size
end

end
