require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'
require 'pry-nav'
require 'active_record'
require_relative 'programmer.rb'

helpers do
  def db_connect
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "KS",
      :password => "",
      :database => "programming_db"
    )
  end
  def db_disconnect
    ActiveRecord::Base.connection.close
  end
end

get '/' do
  redirect to '/programmers'
end

get '/programmers' do
  db_connect
  @people = Programmer.all
  # list all programmers' names
  db_disconnect
  erb :programmers
end

get '/programmers/:id' do
  id = params[:id]
  # display programmer name, twitterpic, username
  db_connect
  @programmer = Programmer.find("#{id}")
  db_disconnect

  erb :programmers_id
end

