require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'
require 'thin'
require_relative 'active_record'
require_relative 'entry'


before do
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "jamesmdavis5",
      :password => "",
      :database => "wdinstagram_db"
    )
end

after do
  ActiveRecord::Base.connection.close
end


get '/' do
  @entries = Entry.all
    # SHOW PHOTOS
  erb :index
end

get '/new' do
  erb :new
end

post '/new' do
  author = params[:author]
  photo_url = params[:photo_url]
  date_taken = params[:date_taken]
  Entry.create( {
    :author => author,
    :photo_url => photo_url,
    :date_taken => date_taken
    })
  redirect to '/'
end

get '/show/:id' do
  id = params[:id].to_i
  @entry = Entry.find(id)
  erb :entries
end

# binding.pry
