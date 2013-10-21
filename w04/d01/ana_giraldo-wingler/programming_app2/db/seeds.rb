require 'csv'

CSV.foreach("programmers.csv") do |row|
  prog = Programmer.new
  prog.name = row[0]
  prog.twitter_username = row[1]
  prog.twitter_pic = row[2]
  prog.save
end