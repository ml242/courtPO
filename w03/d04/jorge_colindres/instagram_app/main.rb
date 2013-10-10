require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'slim'

require_relative 'entry'

helpers do
  def db_connect
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "JC",
      :password => "",
      :database => "instagram_db"
    )
  end
  def db_disconnect
    ActiveRecord::Base.connection.close
  end
end


get '/instagram' do
  db_connect
  @entries = Entry.all
  db_disconnect

  slim :index
end

get '/instagram/entries/new' do
  slim :new
end

post '/instagram/entries/new' do
  db_connect
  author = params[:author]
  date_taken = params[:date_taken]
  photo_url = params[:photo_url]
  # create a new entry and save to DB
  Entry.create :author => author, :date_taken => date_taken, :photo_url => photo_url
  db_disconnect

  redirect to '/instagram'
end

get '/instagram/entries/:id' do
  db_connect
  image_id = params[:id]
  @entry = Entry.find image_id
  db_disconnect

  slim :entry
end
