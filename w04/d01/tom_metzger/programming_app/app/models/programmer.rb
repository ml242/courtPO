class Programmer < ActiveRecord::Base
  attr_accessible :name, :twitter_pic_url, :twitter_username, :github_username, :company_id

  belongs_to :company

end

