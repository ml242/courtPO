require_relative 'programmer'
require 'pry'

# programmers.csv contains the information you need, but you want these entries inserted into your database -- automate it!

# Create a new ruby file called import.rb that will read in each line of programmer details from programmers.csv, and populate your programmers table using active_record

file = File.open('programmers.csv', 'r')

file.each do |line|
  programmer_array = line.split(',')
  @programmer_name = programmer_array[0]
  @programmer_username = programmer_array[1]
  @programmer_pic = programmer_array[2]
  @new_programmer = Programmer.new
  @new_programmer.name = @programmer_name
  @new_programmer.twitter_username = @programmer_username
  @new_programmer.twitter_pic = @programmer_pic
  @new_programmer.save
end
