require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'active_record'

class Entry < ActiveRecord::Base
end

before do
  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "diegopalma",
    :password => "",
    :database => "wdinstagram_db"
  )
end

after do
  ActiveRecord::Base.connection.close
end

# puts "Let's post instagram pics"
# author = gets.chomp
# photo_url = gets.chomp
# date_taken = gets.chomp

# entry1 = Entry.create({:author =>author, :photo_url => photo_url, :date_taken => date_taken})

get '/' do

  erb :index
end


# View Paths

get '/photos/new' do
erb :new
end


# Data Paths

post '/photos' do
 author = params['author']
 photo_url = params['photo_url']
 date_taken = params['date_taken']
 entry = Entry.create({:author =>author, :photo_url => photo_url, :date_taken => date_taken})
  redirect to '/photos'
end

get '/photos' do
  @entries = Entry.all
  ActiveRecord::Base.connection.close
  # binding.pry
  erb :photos
end

get '/photos/:id' do
  @entry = Entry.find(params[:id])
  erb :a_photo
end

get '/photos/:id/delete' do
# Removes a photo from the database
# returns `true` if it was able to remove that photo
end

get '/photos/:id' do
# takes any of the passed in parameters
# updates only those parameters for a single kitten
end




