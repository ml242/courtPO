# == Schema Information
#
# Table name: programmers
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  twitter_pic_url  :string(255)
#  twitter_username :string(255)
#  github_username  :string(255)
#

class Programmer < ActiveRecord::Base
  attr_accessible :name, :twitter_pic_url, :twitter_username, :github_username


end
