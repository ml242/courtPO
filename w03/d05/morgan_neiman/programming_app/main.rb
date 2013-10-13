require 'active_record'
require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'active_record'

class Person < ActiveRecord::Base
end

before  do
  ActiveRecord::Base.logger = Logger.new( STDOUT )

  ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Ducky",
  :password => "",
  :database => "programming_db"
  )
end


after do
  ActiveRecord::Base.connection.close
end

get '/programmers' do
  programmers = Person.all
  # binding.pry
  @programmer_names = []
  programmers.entries.each do |programmer|
    @programmer_names << programmer.name
  end
  erb :programmers
end