require 'active_record'
require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'active_record'
require_relative 'programmer'

get '/programmers' do
  @output = Programmer.all
  erb :programmers
end

get '/programmers/:id' do
  id = params[:id]
  output = Programmer.all
  @programmer = output.find(id)
  erb :programmer_page
end

get '/programmers/:id/edit' do
  id = params[:id]
  output = Programmer.all
  @programmer = output.find(id)
  erb :edit_programmer
end