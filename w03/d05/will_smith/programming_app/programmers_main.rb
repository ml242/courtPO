require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'
require_relative 'import'

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  redirect to '/programmers'
end

get '/programmers' do
  @programmers = Programmer.all
  erb :programmers
end

get '/programmers/:id' do
  id = params[:id]
  programmer = Programmer.find(id)
  @name = programmer['name']
  @twitter_username = programmer['twitter_username']
  @twitter_pic = programmer['twitter_pic']
  erb :programmer
end
