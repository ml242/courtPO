require 'pry'
require 'pg'
require 'HTTParty'
require 'JSON'
require 'active_record'
require 'CSV'


#these are just classes
class Programmer < ActiveRecord::Base  #"translates" Ruby into SQL
  validates(:name, {:presence => :true})
end

  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "ML",
    :password => "",
    :database => "programming_db"
  )

puts "Do you have a new CSV to add to the Database?"
answer = gets.chomp
  if answer == "yes"
    puts "what is the name of the file"
    new_csv = gets chomp
    people = CSV.parse(File.read('new_csv'))
    people.each do |person|
      name = person[0]
      twitter = person[1]
      img_url = person[2]
      entry = Programmer.create({:name => name, :twitter => twitter, :img_url => img_url})
    end
  else
puts "ok no news is good news"
end