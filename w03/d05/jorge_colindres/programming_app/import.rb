require 'csv'
require_relative 'programmer'

CSV.foreach("programmers.csv") do |row|
  Programmer.create(:name => "#{row[0]}", :twitter_username => "#{row[1]}", :twitter_pic => "#{row[2]}")
end
