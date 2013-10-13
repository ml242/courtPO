require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'
require_relative 'programmer'

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  "Welcome!"
end

get '/programmers' do
  @programmers_array = Programmer.all
  erb :programmers
end

get '/programmers/:id' do
  id = params[:id]
  programmer = Programmer.find(id)
  @name = programmer['name']
  @image = programmer['twitter_pic']
  @username = programmer['twitter_username']
  erb :show_programmer
end
