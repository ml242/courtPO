require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'faker'
require 'rainbow'

ids = []
names = []
ages = []
are_cute = []
img_urls = []
message = ''

get '/' do
  if message.nil?
    erb :index
  else
    @message = message
    erb :index
  end
end
get '/kittens/new' do
  erb :new_kitty
end

post '/kittens' do
# - Creates a new kitten in the database
# - returns a hash representation of that kitten
  if message.nil?
    message = ''
  end
  binding.pry
  db_connect = PG.connect(
  :dbname => 'kittens_db',
  :host => 'localhost')
  name = @params['kitty-name']
  age = @params['kitty-age']
  is_cute = @params['kitty-cute']
  img_url = @params['kitty-url']
  sql = "INSERT INTO kittens (name, age, is_cute, img_url) VALUES ('#{name}',#{age},#{is_cute},'#{img_url}')"
  answer = db_connect.exec(sql)
  db_connect.close
  message = 'Kitten added to DB'
  # sql = "SELECT * FROM kittens ORDER BY id DESC LIMIT 1"
  # answer = db_connect.exec(sql)
  # db_connect.close
  # @kitten = answer.entries[0].to_s
  redirect to('/')
end

get '/kittens' do
# - Asks the database for all of the kittens
# - returns an array of hashes where each hash represents the properties of the kitten
  if message.nil?
    message = ''
  end
  binding.pry
  db_connect = PG.connect(
  :dbname => 'kittens_db',
  :host => 'localhost')
  sql = "SELECT * FROM kittens"
  answer = db_connect.exec(sql)
  db_connect.close
  answer.each do |kitty|
    ids << kitty["id"].to_i
    names << kitty["name"]
    ages << kitty["age"]
    if kitty["is_cute"] == 't'
      are_cute << true
    else
      are_cute << false
    end
    img_urls << kitty["img_url"]
  end
  @ids = ids
  @names = names
  @ages = ages
  @are_cute = are_cute
  @img_urls = img_urls
  names = []
  ages = []
  ids = []
  are_cute = []
  img_urls = []
    if message.nil?
    message = ''
  end
  erb :kitty_litter
end

get  '/kittens/:id' do
# - Asks the database for a single kitten
# - returns a single hash representing a single kitten

  db_connect = PG.connect(
    :dbname => 'kittens_db',
    :host => 'localhost')
  sql = "SELECT * FROM kittens"
  answer = db_connect.exec(sql)
  db_connect.close
  if message.nil?
    message = ''
  end
  erb :find_kitty
end

# EVERYTHING AFTER IS EXTRA CREDIT

post '/kittens/:id/delete' do
# - Removes a kitten from the database
# - returns `true` if it was able to remove the kitten
end

post '/kittens/:id' do
# - takes any of the passed in parameters
# - updates only those parameters for a single kitten
end
