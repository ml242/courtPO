require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'
require 'active_record'

helpers do
  def db_connect
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "joshoynick",
      :password => "",
      :database => "WDInstagram_db"
    )
  end

  def db_disconnect
    ActiveRecord::Base.connection.close
  end
end

class Entry < ActiveRecord::Base
end

get '/' do
  db_connect
  @results = Entry.all.reverse_order
  @header = "WDInstagram Feed"
  db_disconnect
  erb :index
end

get '/index' do
  #Displays all entries, so you need sql SELECT * FROM
  connection = PG.connect(:dbname => 'WDInstagram_db', :host => 'localhost')
  sql = "SELECT * FROM entries;"
  response = connection.exec(sql)
  connection.close
  response.entries
end

get '/new' do
  @header = "New Photo"
  erb :new_photo
end

post '/new' do
  db_connect
  author = params[:author]
  photo_url = params[:photo_url]
  date = params[:date]
  new_photo = Entry.create(author: author, photo_url: photo_url, date: date)
  new_photo.save
  db_disconnect
  redirect to '/'
end

get '/:id' do
  db_connect
  @results = Entry.find(params[:id])
  @header = "Photo Added!"
  db_disconnect
  # binding.pry
  erb :photo_added
end

