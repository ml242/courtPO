class Student < ActiveRecord::Base
  attr_accessible :name, :img_url, :email
end