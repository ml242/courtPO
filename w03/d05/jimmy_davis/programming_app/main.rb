require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'
require 'pg'
require_relative 'programmer'
require_relative 'active_record'

before do
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "jamesmdavis5",
    :password => "",
    :database => "programming_db"
  )
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  "Curated Twitter Accounts of Top Developers"
end

get '/programmers' do
  @programmers_array = Programmer.all
  erb :programmers
end

get '/programmers/:id' do
  id = params[:id]
  programmer = Programmer.find(id)
  @name = programmer.name
  @username = programmer.twitter_username
  @pic = programmer.twitter_pic
  # @name = programmer['name']
  # @username = programmer['twitter_username']
  # @pic = programmer['twitter_pic']
  erb :view_programmer
end
