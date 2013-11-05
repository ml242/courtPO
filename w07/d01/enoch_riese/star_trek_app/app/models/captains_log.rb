# == Schema Information
#
# Table name: captains_logs
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CaptainsLog < ActiveRecord::Base
  attr_accessible :title, :message
end
