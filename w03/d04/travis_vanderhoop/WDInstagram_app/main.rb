require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'
require 'json'
require 'httparty'
require 'pg'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "vanderhoop",
  :password => "",
  :database => "wdi_instagram_db"
)

class Entry < ActiveRecord::Base
end

get '/' do
  "works"
end

get '/gallery' do


  erb :gallery
end

get '/entry/new' do

  erb :new_entry_form
end

get '/entry/:entry_id' do
  entry_id = params[:entry_id]
  @entry = Entry.find(entry_id)
  #binding.pry
  erb :entry_spotlight
end

post '/gallery' do
  author = params[:author]
  photo_url = params[:photo_url]
  date_taken = params[:date_taken]
  # e1 = Entry.new
  # e1.author= author
  # e1.photo_url = photo_url
  # e1.date_taken = date_taken
  Entry.create({author: "#{author}", photo_url: "#{photo_url}", date_taken: "#{date_taken}"})
  redirect to ('/gallery')
end
