# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  file = File.open("db/programmers.csv", "r")

  file_string = file.read


  CSV.parse(file_string, :headers => false) do |row|
    Programmer.create!(
    :name => row[0],
    :twitter_username => row[1],
    :twitter_pic => row[2]
    )
  end
