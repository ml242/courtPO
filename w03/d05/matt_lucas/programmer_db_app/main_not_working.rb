require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'active_record'
require 'CSV'
require 'github_api'
require 'HTTParty'

class Programmer < ActiveRecord::Base  #"translates" Ruby into SQL
  validates(:name, {:presence => :true})
end

  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "ML",
    :password => "",
    :database => "programming_db"
)

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
    if response == "true"
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
  # id = params[:id]
  # github_url = params[:github_url]
  # Programmer.update(id)
  # Programmer.save
  redirect to('/programmers')
end