require_relative 'main'
require 'pry'
require 'csv'

programmers= []

CSV.foreach("/Users/Amy/ga_wdi/homework/w03/d05/amy_ruan/programming_app/programmers.csv") do |row|
  programmers<< row
end

programmers.each do |programmer|
  Programmer.create(:name => programmer[0], :twitter_pic => programmer[1], :twitter_pic => programmer[2])
end




