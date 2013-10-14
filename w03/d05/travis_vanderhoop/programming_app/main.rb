
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

get '/' do

erb :hello
end

get '/programmers' do
  @programmers = Programmer.all
  @programmers = @programmers.to_a
erb :programmers
end
