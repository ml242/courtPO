class Cat < ActiveRecord::Base
  attr_accessible :age, :image_url, :name, :tag_line, :score
end
