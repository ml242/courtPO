# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# file = File.open("#{file_path}","r")
# file_str = file.read

require 'csv'

file = File.open("/Users/thomasmetzger/ga_wdi/hw/w04/d01/tom_metzger/programming_app/db/programmers.csv","r")
file_str = file.read

CSV.parse(file_str, :headers => false) do |row|
  Programmer.create!(
    :name => row[0],
    :twitter_username => row[1],
    :twitter_pic_url => row[2]
  )
end
