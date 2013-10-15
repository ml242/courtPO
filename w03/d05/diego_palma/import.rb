# This rb file reads in each line of programmer details from programmers.csv, and populate the programmers table using active_record
require 'csv'
require 'active_record'
require 'pg'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "diegopalma",
  :password => "",
  :database => "programming_db"
)

class Programmer < ActiveRecord::Base
end

people = CSV.parse(File.read('programmers.csv'))

people.each do |person|
  name = person[0]
  twitter_username = person[1]
  twitter_pic = person[2]
  entry = Programmer.create({:name =>name, :twitter_username => twitter_username, :twitter_pic => twitter_pic})
end

# Modify your import.rb file so that when it runs, it asks or prompts for the location of a .csv file that it should read in to the database.




