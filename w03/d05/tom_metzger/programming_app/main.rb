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



get '/' do
end


get '/programmers' do
  "will display a list of all programmers names"
  # connect to database
  # pull all names & ids from database
  # send names (to be displayed as text) and ids (to be used in links) to .erb file
  db_connect
  @result = Programmer.all.order("name ASC")
  db_disconnect
  binding.pry
  erb :programmers
end


get '/programmers/:id' do
  "will display all information for one (the selected) programmers"
  # connect to database
  # pull all data associated with selected id
  # send name, username & image to .erb file to be displayes
  photo_id = params["id"]
  db_connect
  @result = Programmer.find(photo_id)
  db_disconnect
end



















