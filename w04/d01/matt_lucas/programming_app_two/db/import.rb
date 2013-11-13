require 'pry-rails'
require 'CSV'

new_csv = gets.chomp
people = CSV.parse(File.read('new_csv'))
people.each do |person|
  name = person[0]
  twitter = person[1]
  img_url = person[2]
  entry = Programmer.create({:name => name, :twitter => twitter, :img_url => img_url})
end
