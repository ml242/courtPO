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
  "gallery works"
end

get '/entry/new' do
  "new entry works"
end

get '/entry/:entry_id' do
  "entry display of particular entry_id works"
end
