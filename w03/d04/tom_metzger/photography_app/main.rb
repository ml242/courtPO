require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'active_record'

require_relative 'classes'



# helpers do
#   def db_connect
#     ActiveRecord::Base.logger = Logger.new( STDOUT )
#     ActiveRecord::Base.establish_connection(
#       :adapter => "postgresql",
#       :host => "localhost",
#       :username => "thomasmetzger",
#       :password => "",
#       :database => "models_db"
#     )
#   end

#   def db_disconnect
#     ActiveRecord::Base.connection.close
#   end
# end


get '/' do
  # db_connect
  # @entries = Models.all
  # db_disconnect
  erb :index
end


get '/new' do
  erb :new
end


post '/create' do
  binding.pry
  # author = params["author"]
  # photo_url = params["photo_url"]
  # photo_date = params["photo_date"]
  # use Models.create(author: 'author', photo_url: 'photo_url', photo_date: 'photo_date')
  # rediret to ('/show')  #may need to change this path
end


get '/show' do
  # this will show a single object that was just created
  # params from post method
  # reassign params to @author, @photo_url, @date_taken
  # use to create a form for a single record
  # erb :show
end

get '/show/:id' do
  # this will show a single object selected from the complete list
  # params["id"] from get method
  # query database by the id
  # teke query result and rename results to @author, @photo_url, @date_taken
  # output result in a form for a single record
  # erb :show
end




