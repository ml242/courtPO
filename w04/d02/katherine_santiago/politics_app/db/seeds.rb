# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

State.delete_all

path = "/Users/KS/ga_wdi/hw/w04/d02/katherine_santiago/politics_app/db"
file_name = "list_of_states.csv"
file_path = "#{path}/#{file_name}"

File.open( file_path, 'r+' ) do |file|
  file.each do |line|
    state = line.split(',')
    State.create({
      :name              => state[0],

    })
  end
end

puts "Imported #{State.count}"
