
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'active_record'
require 'pry'
require_relative 'programmer'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'vanderhoop',                                             #ENTER YOUR USERNAME OR BE FOREVER FRUSTRATED
  :password => '',
  :database => 'programming_db'      #ENTER THE DATABASE YOU WANT TO WORK WITH OR DIE UNHAPPY
)

# programmers = Programmer.all

programmers = Programmer.all.to_a #grabs all programmer profiles from the programmers table in the programming_db, and converts them to a data-retrievable array.

get '/' do

erb :hello
end

get '/programmers' do
  # @programmers = programmers.to_a
  @programmers = programmers
erb :programmers
end

get '/programmers/:id' do
  id = params[:id]              #NOTE: id may need to be converted to an integer using .to_i
  programmer = Programmer.all.find(id)
  @name = programmer[:name]
  @twitter_username= programmer[:twitter_username]
  @twitter_pic = programmer[:twitter_pic]
  erb :programmer
end






