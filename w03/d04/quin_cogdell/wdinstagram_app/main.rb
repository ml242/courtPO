require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'active_record'


helpers do
  def db_connect
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "quincogdell",
      :password => "",
      :database => "wdinstagram_db"
    )
  end

   def db_disconnect
    ActiveRecord::Base.connection.close
    end
  end

class Photo < ActiveRecord::Base
end

get '/' do
  db_connect
  @results = Photo.all.reverse_order
  @header = "Pictures Posted"
  db_disconnect
  erb :index
end

get '/new' do
  @header = "New Photo"
  erb :new_photo
end

post '/new' do
  db_connect
  author = params[:author]
  photo_url = params[:photo_url]
  date_taken = params[:date_taken]
  new_photo = Photo.create(author: author, photo_url: photo_url, date_taken: date_taken)
  new_photo.save
  db_disconnect
  redirect to '/'
end

get '/:id' do
  db_connect
  @results = Photo.find(params[:id])
  @header = "Picture Posted"
  db_disconnect
  #binding.pry
  erb :single
end




