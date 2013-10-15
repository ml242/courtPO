require 'pry'
require_relative 'act_rec'
require_relative 'models/programmer'

csv_file = "../ASSIGNMENT_FILES/programmers.csv"
of = File.open("#{csv_file}", "r")

of.readlines.each do |line|
  values = line.split(",")
  name, twit_username, twit_pic = values[0], values[1], values [2]
  Programmer.create({
    name: name, 
    twitter_pic: twit_pic, 
    twitter_username: twit_username
  })
end
