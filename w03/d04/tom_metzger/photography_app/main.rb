require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'active_record'



ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "thomasmetzger",
  :password => "",
  :database => "photos_db"
)

helpers do
  def db_connect
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "thomasmetzger",
      :password => "",
      :database => "photos_db")
  end

  def db_disconnect
    ActiveRecord::Base.connection.close
  end
end


class Photo < ActiveRecord::Base
end



get '/photos' do
  db_connect
  @entries = Photo.all
  db_disconnect
  erb :index
end


get '/photos/new' do
  erb :new
end


post '/photos' do
  author = params["author"]
  photo_url = params["photo_url"]
  photo_date = params["photo_date"]
  db_connect
  new_entry = Photo.create(author: author, photo_url: photo_url, date_taken: photo_date)
  db_disconnect
  entry_id = new_entry.id
  redirect to ("/photos/#{entry_id}")  #may need to change this path
end


get '/photos/:id' do
  photo_id = params["id"]
  db_connect
  @result = Photo.find(photo_id)
  db_disconnect
  # this will show a single object that was just created
  # params from post method
  # reassign params to @author, @photo_url, @date_taken
  # use to create a form for a single record
  erb :show
end






