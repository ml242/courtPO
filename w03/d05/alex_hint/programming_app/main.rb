require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Hint",
  :password => "",
  :database => "programming_db"
)

#ActiveRecord::Base.connection.close

class Programmer < ActiveRecord::Base
end

get '/' do
  redirect to('/programmers')
end

get '/programmers' do
  @programmers = Programmer.all
  #binding.pry
  erb :programmers
end

get '/programmers/:id' do
  id = params[:id]
  @programmer = Programmer.find(id)
  erb :programmers_id
end