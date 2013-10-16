require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'
require 'active_record'

class Programmer < ActiveRecord::Base
end

before do
  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "diegopalma",
    :password => "",
    :database => "programming_db"
  )
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  @programmers = Programmer.all
  erb :programmers
end

get '/programmers/new' do
erb :add_programmer
end

post '/programmers' do
  name = params[:name]
  twitter_username  = params[:twitter_username]
  twitter_pic = params[:twitter_pic]
  github_username = params[:github_username]
  entry = Programmer.create({:name => name, :twitter_username => twitter_username, :twitter_pic => twitter_pic, :github_username => github_username})
  redirect to '/programmers' #How do I redirect to the specific id from here?
end

get '/programmers' do
  programmers = Programmer.all
  @programmers = programmers #.shuffle
  erb :display_all
  # binding.pry
end

post '/programmers/:id/delete' do
  id = params[:id]
  Programmer.find(id).destroy
  redirect to '/programmers'
end


get '/programmers/:id/edit' do
  @profile = Programmer.find(params[:id])
  erb :edit
end

# post '/programmers/:id/edit' do
#   name = params[:name]
#   twitter_username  = params[:twitter_username]
#   twitter_pic = params[:twitter_pic]
#   entry = Programmer.find(params[:id]).update({:name => name, :twitter_username => twitter_username, :twitter_pic => twitter_pic})
#   redirect to "/programmers/#{(params[:id])}"
# end

post '/programmers/:id' do
  name = params[:name]
  twitter_username  = params[:twitter_username]
  twitter_pic = params[:twitter_pic]
  github_username = params[:github_username]
  entry = Programmer.find(params[:id]).update({:name => name, :twitter_username => twitter_username, :twitter_pic => twitter_pic, :github_username => github_username})
  redirect to "/programmers/#{(params[:id])}"
end

get '/programmers/:id' do
  @profile = Programmer.find(params[:id])
  @programmers = Programmer.all
  # binding.pry
  erb :profile
end





