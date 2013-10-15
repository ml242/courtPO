require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'

#establish connection with active rerd
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "EddieShin",
  :password => "",
  :database => "programming_db"
  )

class Programmer < ActiveRecord::Base
end

#routes
get '/' do
  redirect to ('/programmers')
end

get '/programmers' do
  #shows the names of programmers
  table = Programmer.all
  @programmers_table = table.entries
  erb :programmers
end

get '/programmers/:id' do
  #shows individual programmers info
  id = params["id"]
  @programmer_info = Programmer.find(id)
  erb :programmer
end
