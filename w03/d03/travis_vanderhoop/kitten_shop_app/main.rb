require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'kitten_shop_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result = result.entries
  end
end

get '/' do
  "/ Works"
end

get '/kittens/new' do
  #I need to get all the available owners to display in the drop down menu.
  sql = "SELECT * FROM owners"
  @owners = db_exec(sql) #retrieves owners list from the database, converts it to an array, which I've saved in the instance variable @owner, for use in the view.
  binding.pry
  erb :form
end



# GET /kittens/new
# - this returns an erb page that has the form to create a new kitten
# - the form itself should look like this:
#     <form method="post" action"/kittens">…</form> to post

post '/kittens' do
  name = params[:name]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  owner = params[:owner]
  sql = "INSERT INTO kittens (name, is_cute, image_url, owner) VALUES ('#{name}', '#{is_cute}', '#{image_url}', '#{owner}')"
  db_exec(sql)
  redirect to ('/kittens')
  end

get '/kittens' do
  sql = "SELECT * FROM kittens"
  @kittens = db_exec(sql) #retrieves kitten list from the database, converts it to an array, which I've saved in the instance variable @kittens, for use in the view.
  erb :kitten_list
end

#============================
# - Asks the database for a single kitten
# - returns a single hash representing a single kitten
get '/kittens/:id' do
  kitten = params[:id]
  sql = "SELECT * FROM kittens WHERE id=#{kitten}"
  kittens = db_exec(sql)    #retrieves kitten list from the database, converts it to an array, which I've saved in the instance variable @kittens
  @kitten = kittens[0]        #returns a hash with the proper kitten in it.
  erb :kitty_profile
end

get '/owners/new' do

  erb :owner_form
end

post '/owners' do
  name = params[:name]
  sql = "INSERT INTO owners (name) VALUES ('#{name}')"
  db_exec(sql)
  redirect to ('/owners')
end

get '/owners' do
  sql = "SELECT * FROM owners"
  @owners = db_exec(sql) #retrieves owners list from the database, converts it to an array, which I've saved in the instance variable @owner, for use in the view.
  erb :owner_list
end

