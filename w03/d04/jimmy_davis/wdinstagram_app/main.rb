require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'

# before do
#   ActiveRecord::Base.logger = Logger.new( STDOUT )
#   ActiveRecord::Base.establish_connection(
#     :adapter => "postgresql",
#     :host => "localhost",
#     :username => "fijimunkii",
#     :password => "",
#     :database => "wdstagram_db"
#   )
# end

# after do
#   ActiveRecord::Base.connection.close
# end

# get '/' do
#   @entries = Entry.all
#   erb :index
# end

helpers do
  def open
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "jamesmdavis5",
      :password => "",
      :database => "wdinstagram_db"
    )
  end
  def close
    ActiveRecord::Base.connection.close
  end
end

class Entry < ActiveRecord::Base
end

get '/' do
  open
  @entries = Entry.all
    # SHOW PHOTOS
  close
  erb :index
end

get '/new' do
  erb :new
end

post '/new' do
  open
  e1 = Entry.new
  e1.author = params[:author]
  e1.photo_url = params[:photo_url]
  e1.date_taken = params[:date_taken]
  e1.save
  close
  redirect to '/'
end

get '/show/:id' do
  open
  id = params[:id].to_i
  @entry = Entry.find(id)
  close
  erb :entries
end
