require 'pg'
require 'active_record'
require_relative 'programmer'

# ActiveRecord::Base.logger = Logger.new( STDOUT )

# ActiveRecord::Base.establish_connection(
#   :adapter => "postgresql",
#   :host => "localhost",
#   :username => "fijimunkii",
#   :password => "",
#   :database => "programming_db"
# )

db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///programming_db')

ActiveRecord::Base.establish_connection(
  :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
  :host     => db.host,
  :username => db.user,
  :password => db.password,
  :database => db.path[1..-1],
  :encoding => 'utf8'
)

file = File.open('programmers.csv', 'r')

csv_array = file.map do |line|
  line.chomp.split(',')
end

csv_array.map! do |line|
  line = {
    :name => line[0],
    :github_username => line[1],
    :twitter_username => line[2],
    :twitter_pic => line[3]
  }
end

csv_array.each do |programmer|
  p1 = Programmer.create(
    :name => programmer[:name],
    :github_username => programmer[:github_username],
    :twitter_username => programmer[:twitter_username],
    :twitter_pic => programmer[:twitter_pic]
  )
  puts "Added #{p1.name} to database with ID: #{p1.id}"
end
