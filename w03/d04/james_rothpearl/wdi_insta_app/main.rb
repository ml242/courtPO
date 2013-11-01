require 'active_record'
require 'pry'
require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?

#these are just classe
class Photo < ActiveRecord::Base  #"translates" Ruby into SQL

end

 helpers do
  def db_connect
    ActiveRecord::Base.logger = Logger.new( STDOUT )

    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "jamesrothpearl",
      :password => "",
      :database => "wdi_insta_db"
    )
  end
  def db_disconnect
    ActiveRecord::Base.connection.close
  end
end

get '/' do
  db_connect
  @photos_list = Photo.all
  db_disconnect
  erb :index
end

get '/show/:id' do
  id = params[:id]
  db_connect
  @photo = Photo.find(id)
  db_disconnect
  erb :show
end

get '/new' do
  #this route will show a form that will allow a user to create a new photo
    # the form will have
        # a method: POST
        # and action:
  #

end

post '/new' do



