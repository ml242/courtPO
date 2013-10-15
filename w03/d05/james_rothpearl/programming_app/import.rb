require 'csv'
require 'pry'
require 'active_record'
require 'pg'
require_relative 'programmers'

  file = File.open("programmers.csv", "r")

  file_string = file.read

  # user_info = file_string.split("\n")

  # user_info.map! do |user|
  #   user.split(",")
  # end

  CSV.parse(file_string, :headers => false) do |row|
    Programmer.create!(
    :name => row[0],
    :twitter_pic => row[1],
    :twitter_username => row[2]
    )
  end

