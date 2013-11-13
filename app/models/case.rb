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

end
