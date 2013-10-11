require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'
require 'pry-nav'
require 'active_record'

helpers do
  def db_connect
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "KS",
      :password => "",
      :database => "wdinstagram_db"
    )
  end
  def db_disconnect
    ActiveRecord::Base.connection.close
  end
end

class Entry < ActiveRecord::Base
end


# get '/' do
#   # db_connect
#   # @entries = Entry.all
#   # db_disconnect
#   # slim :index
#   redirect to '/wdinstagram'
# end

get '/' do
  redirect to '/photos'
end

get '/photos' do
    # this lists all of the entries in the database
    db_connect
    @entries = Entry.all
    db_disconnect
    # should include a link to add a new entry
    erb :photos
end


get '/photos/new' do
  # this should go to the form
  erb :new
end

post '/photos' do
  # create variables that point to inputs from the new form from params
  author = params[:author]
  photo = params[:photo]
  date_taken = params[:date_taken]

  #this should redirect to '/wdinstagram' listing all entries
  db_connect
  photo_entry = Entry.create({ :author => "#{author}", :photo => "#{photo}", :date_taken => "#{date_taken}" })
  db_disconnect

  redirect to '/photos'
end

get '/photos/:id' do
  id = params[:id]

  db_connect
  @entry = Entry.find("#{id}")
  db_disconnect

  erb :photos_id
end




