require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'xmas_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end

# GET
# display an index page that says 'Wishlists!'
# then we want to list any wishlists

get '/wishlists' do
  db_connect = PG.connect(:dbname => 'xmas_db', :host => 'localhost')
  sql = "SELECT * FROM wishlists;"
  response = db_connect.exec(sql)
  db_connect.close
  db_exec(sql)
  p response.entries.to_s
  # sql query to get all wishlists
  # display them all
  # erb :item
end

# GET '/wishlists/1'
# show all the items for that wishlist

get '/wishlists/:id' do
  db_connect = PG.connect(:dbname => 'xmas_db', :host => 'localhost')
  id = params[:id]
  sql = "SELECT * FROM wishlists WHERE id = #{id};"
  response = db_connect.exec(sql)
  db_connect.close
  p response.entries.to_s
  # sql query for a particular wishlist
end

# GET '/wishlists/1/items/2'

get '/wishlists/:id/items/:item_id' do
  db_connect = PG.connect(:dbname => 'xmas_db', :host => 'localhost')
  id = params[:id]
  item_id = params[:item_id]
  sql = "SELECT * FROM items WHERE wishlist_id = #{item_id};"
  response = db_connect.exec(sql)
  db_connect.close
  p response.entries.to_s
  # sql query for a particular item
end

# add a form to add an item to a wishlist
# add a form to add a wishlist