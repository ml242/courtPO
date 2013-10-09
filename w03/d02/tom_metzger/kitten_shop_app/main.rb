require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

require_relative 'kittens'

get '/' do
  "What would you like to do?"
  #links to the different routes
end

post '/kittens' do
  # Creates a new kitten in the database
  # returns a hash representation of that kitten
  new_kitten = {:name => "Chelsea", :age => 3, :is_cute => true, :image_url => "http://placekitten.com/300"}
  # puts kitten into database
  db_connect = PG.connect(:dbname => 'animals_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{new_kitten[:name]}', #{new_kitten[:age]}, #{new_kitten[:is_cute]}, '#{new_kitten[:url]}')"
  # sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('Chelsea', 3, true, 'http://placekitten.com/300')"
  result = db_connect.exec(sql)
  db_connect.close
  redirect to ('/kittens')
end

get '/kittens' do
  "/kittens GET route"
  # listing of all kittens in database
end

get '/kittens/:id' do
  "/kittens/:id GET route"
end



#OPTIONAL--------------------------------------------------------
# post '/kittens/:id/delete' do
#   " /kittens/:id/delete POST route"
# end

# post '/kittens/:id' do
#   "/kittens/:id POST route"
# end



