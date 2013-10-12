require 'pry'

puts "Please direct me to the Programmers CSV file so I can process it into the database."
location = gets.chomp
file = File.open(location, 'r')
csv_array = file.map do |line|
  line.split("'")
end
csv_array.map! do |line|
  line = {
    :name => line[0],
    :twitter_username => line[1],
    :twitter_pic => line[2]
  }
end

