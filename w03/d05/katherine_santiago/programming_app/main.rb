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

get '/' do
  redirect to '/programmers'
end

get '/programmers' do
  # list all programmers' names
end

get '/programmers/:id' do
  # display programmer name, twitterpic, username
end

