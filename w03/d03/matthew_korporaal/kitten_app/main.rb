require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'faker'
require 'rainbow'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'kittens_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end

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
  # get owners and id's pass to new_kitty
  owner_name = []
  owner_id = []
  sql = "SELECT * FROM owners"
  answer = db_exec(sql)
  answer.entries.each do |owner|
    owner_id << owner['id']
    owner_name << owner['name']
  end
  @owner_id = owner_id
  @owner_name = owner_name
  erb :new_kitty
end

post '/kittens' do
# - Creates a new kitten in the database
# - returns a hash representation of that kitten
  if message.nil?
    message = ''
  end
  name = @params['kitty-name']
  age = @params['kitty-age']
  is_cute = @params['kitty-cute']
  img_url = @params['kitty-url']
  # Add owner id to kitten
  owner = @params['owner'].to_i
  sql = "INSERT INTO kittens (name, age, is_cute, img_url, owner_id) VALUES ('#{name}',#{age},#{is_cute},'#{img_url}',#{owner})"
  db_exec(sql)
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
  names = []
  ages = []
  ids = []
  are_cute = []
  img_urls = []
  owner_name = []
  if message.nil?
    message = ''
  end
  sql = "SELECT * FROM kittens"
  answer = db_exec(sql)
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
    # get owner name
    owner_id = kitty['owner_id']
    sql = "SELECT name FROM owners WHERE id = #{owner_id}"
    owner = db_exec(sql)
    owner_name << owner.entries[0]['name']
  end
  @ids = ids
  @names = names
  @ages = ages
  @are_cute = are_cute
  @img_urls = img_urls
  @owner_name = owner_name
  if message.nil?
    message = ''
  end
  erb :kitty_litter
end

get '/kittens/owner/new' do
# Create a new owner form
  erb :new_owner
end

post '/kittens/owner' do
  owner = @params['owner-name']
  sql = "INSERT INTO owners (name) VALUES ('#{owner}')"
  db_exec(sql)
  message = 'Owner added to DB'
  redirect to('/')
end

get  '/kittens/:id' do
# - Asks the database for a single kitten
# - returns a single hash representing a single kitten
  sql = "SELECT * FROM kittens WHERE id = #{params[:id]}"
  answer = db_exec(sql)
  kitten = answer.entries[0]
  @id = kitten["id"].to_i
  @name = kitten["name"]
  @age = kitten["age"].to_i
  if kitten["is_cute"] == 't'
    @is_cute = true
  else
    @is_cute = false
  end
  @img_url = kitten["img_url"]
  # Get owners name and assign to instance variable
  sql = "SELECT * FROM owners WHERE id = #{kitten['owner_id']}"
  answer = db_exec(sql)
  @owner = answer.entries[0]["name"]
  if message.nil?
    message = ''
  end
  erb :show_kitty
end

# EVERYTHING AFTER IS EXTRA CREDIT
post '/kittens/:id/delete' do
# - Removes a kitten from the database
# - returns `true` if it was able to remove the kitten
end

post '/kittens/:id' do
    binding.pry
# - takes any of the passed in parameters
# - updates only those parameters for a single kitten
end
