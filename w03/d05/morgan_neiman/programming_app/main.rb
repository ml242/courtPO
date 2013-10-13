require 'active_record'
require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
# require_relative 'active_record'

class Programmer < ActiveRecord::Base
end

before  do
  ActiveRecord::Base.logger = Logger.new( STDOUT )

  ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Ducky",
  :password => "",
  :database => "instagram_db"
  )
end


after do
  ActiveRecord::Base.connection.close
end

get '/programmers' do
  programmers = Programmer.all
  @programmer_names = []
  programmers.entries.each do |programmer|
    @programmer_names << programmer.name
  end
  erb :programmers
end