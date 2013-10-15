require 'active_record'
require 'pg'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :database => 'programming_db',
  :username => 'natashagreen',
  :password => ''
)

class Programmer < ActiveRecord::Base
end

f = File.open("programmers.csv", "r")
f.each do |line|
info = line.split(',')
p = Programmer.new
p.name = info[0]
p.twitter_username = info[1]
p.twitter_pic = info[2]
p.save
end
f.close

