require 'csv'

require_relative 'programmer'

file = "programmers.csv"

# file_csv = CSV.read(file)
# binding.pry

CSV.foreach(file) do |row|
  name = row[0]
  twitter_name = row[1]
  twitter_pic = row [2]
  programmer = Programmer.new(name: name, twitter_username: twitter_name, twitter_pic: twitter_pic)
  programmer.save
  p row
end


