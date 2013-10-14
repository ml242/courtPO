require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'
require_relative 'programmer'

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
  @name = programmer['name']
  @twitter_username = programmer['twitter_username']
  @twitter_pic = programmer['twitter_pic']
  erb :view_programmer
end
