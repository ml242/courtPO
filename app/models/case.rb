# == Schema Information
#
# Table name: cases
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  conflict    :text
#  summary     :text
#  is_resolved :boolean          default(FALSE)
#  expiration  :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Case < ActiveRecord::Base

  attr_accessible :title, :conflict, :summary, :is_resolved, :expiration, :user_id

  belongs_to :user
  has_many :solutions

  validates :title, uniqueness: true, presence: true, length: { minimum: 4 }
  validates :conflict, presence: true, length: { minimum: 4 }

def age
  t = Time.zone.now
  return ((t - self.created_at) / 60)/60
end

def timeLeft
  t = Time.zone.now
  sec = (self.created_at + self.expiration * (3600 * 24)) - t
  return (sec/60)/60
end

end
