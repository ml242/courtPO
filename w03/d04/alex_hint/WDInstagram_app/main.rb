require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Hint",
  :password => "",
  :database => "insta_db"
)

ActiveRecord::Base.connection.close

class Entry < ActiveRecord::Base
end

get '/' do
  @posts = Entry.all
  ActiveRecord::Base.connection.close
  erb :index
end

get '/show/:id' do
  id = params[:id]
  @post = Entry.find(id)
  ActiveRecord::Base.connection.close
  erb :show
end

get '/new' do
  erb :new
end

post '/create' do
  author = params[:author]
  image_url = params[:image_url]
  date = params[:date]

  Entry.create({author: author, image_url: image_url, date: date})
  ActiveRecord::Base.connection.close
  redirect to('/')
end














