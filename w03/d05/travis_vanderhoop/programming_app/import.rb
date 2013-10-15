require 'pry'
require 'csv'
require 'active_record'
require_relative 'programmer'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'vanderhoop',                              #ENTER YOUR USERNAME OR BE FOREVER FRUSTRATED
  :password => '',
  :database => 'programming_db'      #ENTER THE DATABASE YOU WANT TO WORK WITH OR DIE UNHAPPY
)

csv_entries = []

CSV.foreach('programmers.csv') do |row|                           #creates 3-value arrays for each entry in the programmers.csv file
  csv_entries << row
end

csv_entries.each do |entry|                                     #takes each entry and saves to db
  Programmer.create({name: entry[0], twitter_username:  entry[1], twitter_pic: entry[2]})
end

