require 'pry'
require 'csv'
require 'active_record'

require_relative 'active_record'
require_relative 'programmer'

desc "Imports a CSV file into an ActiveRecord table"
task :csv_import
  puts "CSV file location:"
  csv_file = gets.chomp
  CSV.foreach("#{csv_file}") do |row|
    prog = Programmer.new
    prog.name = row[0]
    prog.twitter_username = row[1]
    prog.twitter_pic = row[2]
    prog.save
  end
end