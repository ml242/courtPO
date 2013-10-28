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

get '/programmers/new' do
  # "welcome to the insert" works
  erb :new #works
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
  @githubs = data["githubs"]
  response = HTTParty.get("https://api.github.com/users/#{@twitter}/repos")
  erb :programmer
end

get '/programmers/:id/edit' do
  id = params[:id]
  @data = Programmer.find(id)
  erb :edit
end

post '/programmers/:id' do
  id = params[:id]
  gitinput = params["githubs"]
  twitter = params["twitter"]
  img_url = params["img_url"]
  name = params["name"]
  data = Programmer.find(id)
  #retrieve the post data and input it into DB
  data.twitter = twitter
  data.name = name
  data.img_url = img_url
  data.githubs = gitinput
  data.save
#   # save the url
#   url = programmers/"#{data.id}"
# #redirect to next
#   binding.pry
  redirect to('/programmers')
end

post '/programmers' do
  data = Programmer.create
  twitter = params["twitter"]
  img_url = params["img_url"]
  name = params["name"]
  gitinput = params["githubs"]
  #retrieve the post data and input it into DB
  data.twitter = twitter
  data.name = name
  data.img_url = img_url
  data.githubs = gitinput
  data.save
  binding.pry
  redirect to('/programmers/id')
end