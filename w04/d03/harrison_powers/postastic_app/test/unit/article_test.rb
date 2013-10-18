# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
