require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'active_record'
require 'CSV'
require 'github_api'
require 'HTTParty'

before do
  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "ML",
    :password => "",
    :database => "programming_db"
  )
end

after do
  ActiveRecord::Base.connection.close
end
class Programmer < ActiveRecord::Base  #"translates" Ruby into SQL
end

get '/' do
  erb :index
end


get '/programmers' do
  # get all info
  @data = Programmer.all
  # send to erb
  erb :programmers
end

get '/programmers/:id' do
  id = params[:id]
  data = Programmer.find(id)
  @id = data["id"]
  @name = data["name"]
  @twitter = data["twitter"]
  @img_url = data["img_url"]
  response = HTTParty.get("https://api.github.com/users/#{@twitter}/repos")
  @github = response
  erb :programmer
end

get '/programmers/:id/edit' do
  id = params[:id]
  data = Programmer.find(id)
  @id = data["id"]
  @name = data["name"]
  @twitter = data["twitter"]
  @img_url = data["img_url"]
  response = HTTParty.get("https://api.github.com/users/#{@twitter}/repos")
  @github = response
  erb :edit
end

post '/programmers/:id' do
id = params[:id]
binding.pry
# Programmer.find(:id)
#retrieve the post data and input it into DB
#redirect to next
redirect to('/programmers')
end

