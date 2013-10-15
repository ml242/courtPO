# open file
# read contents
# parse contents of string and add to database

require_relative 'programmer'
require 'csv'

puts "What file would you like to import? (insert path)"
file_path = gets.chomp

# file = File.open("programmers.csv","r")     my original code
file = File.open("#{file_path}","r")
file_str = file.read

CSV.parse(file_str, :headers => false) do |row|
  Programmer.create!(
    :name => row[0],
    :twitter_username => row[1],
    :twitter_pic => row[2]
  )
end





        # Intructional notes from the web
        # # CSV.parse(my_string, :headers => true) do |row|
        # #   Fruit.create!(
        # #     :name => row['name'],
        # #     :color => row['color'],
        # #     :tasty => row['tasty'] == 'true',
        # #     :qty => row['qty'].to_i
        # #   )
        # # end





        # My first futile attempt
        # # file_st = ""
        # # file_str = file.read
        # # programmer_array = file_str.split("\n")
        # # programmer_data = programmer_array.map do |programer|
        # #   programmer.split(",")
        # # end


        # # programmer_info = programmer_data.map do |programmer|
        # #   :name = programmer[0],
        # #   :twitter_username = programmer[1],
        # #   :twitter_pic = programmer[2]
        # # end


