require 'csv'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "EddieShin",
  :password => "",
  :database => "programming_db"
  )

class Programmer < ActiveRecord::Base
end

programmers_array = CSV.read("/Users/EddieShin/ga_wdi/hw/w03/d05/edward_shin/programming_app/programmers.csv")

i = 0
while i  < programmers_array.count
  programmer_info = programmers_array[i]
  name = programmer_info[0]
  twitter_pic = programmer_info[2]
  twitter_username = programmer_info[1]
  p1 = Programmer.new
  p1.name = name
  p1.twitter_username = twitter_username
  p1.twitter_pic = twitter_pic
  p1.save
  i = i + 1
end
