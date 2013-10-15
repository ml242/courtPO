require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

require_relative 'programmer'

helpers do
  def db_connect
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "thomasmetzger",
      :password => "",
      :database => "programming_db")
  end

  def db_disconnect
    ActiveRecord::Base.connection.close
  end
end



# get '/' do
#   "Welcome to the Programmers database"
#   # erb :landing
# end


get '/programmers' do
  "will display a list of all programmers names"
  # connect to database
  # pull all names & ids from database
  # send names (to be displayed as text) and ids (to be used in links) to .erb file
  db_connect
  # optimize by ONLY choosing the name & ID
  @result = Programmer.all.order("name ASC")
  db_disconnect
  erb :programmers
end


get '/programmers/:id' do
  # will display all information for one (the selected) programmers
  # connect to database
  # pull all data associated with selected id
  # send name, username & image to .erb file to be displayes
  programmer_id = params["id"]
  db_connect
  @result = Programmer.find(programmer_id)
  db_disconnect
  erb :id
end

get '/programmers/:id/edit' do
  programmer_id = params["id"]
  db_connect
  @result = Programmer.find(programmer_id)
  db_disconnect
  erb :id_edit
end

post '/programmers/:id' do
  programmer_id = params["id"]
  db_connect

  # ADD COMMENT ABOUT UPDATING
  user = Programmer.find(programmer_id)
  user.update(
    name: params["name"],
    twitter_username: params["username"],
    twitter_pic: params["img_url"],
    github: params["github"])
  db_disconnect
  redirect to ("/programmers/#{programmer_id}")
end



