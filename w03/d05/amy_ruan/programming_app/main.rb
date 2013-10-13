require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'active_record'
require_relative 'programmer'

  ActiveRecord::Base.logger = Logger.new( STDOUT )

  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "Amy",
    :password => "",
    :database => "programming_db"
  )

    ActiveRecord::Base.connection.close

get "/" do
  redirect ('/programmers')
end

get "/programmers" do
  programmers = Programmer.all
end

get "/programmers/:id" do
end

