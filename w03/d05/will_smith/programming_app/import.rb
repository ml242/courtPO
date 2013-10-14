require 'pry'
require_relative 'programmers'

programmers = File.open('programmers.csv', 'r')

programmers.each do |line|
  programmer_array = line.split(',')
  @name = programmer_array[0]
  @twitter_username = programmer_array[1]
  @twitter_pic = programmer_array[2]
  @new_programmer = Programmer.new
  @new_programmer.name = @name
  @new_programmer.twitter_pic = @twitter_pic
  @new_programmer.twitter_username = @twitter_username
  @new_programmer.save
end
binding.pry

