require 'csv'
require_relative 'programmer'

puts "What's the full path to your csv?"
csv = gets.chomp

CSV.foreach("#{csv}") do |row|
  Programmer.create(:name => "#{row[0]}", :twitter_username => "#{row[1]}", :twitter_pic => "#{row[2]}")
end
