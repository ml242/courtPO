require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pg'
require 'pry'
require_relative 'programmer'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "MTK",
  :password => "",
  :database => "programming_db"
)

get '/' do
  redirect to('/programmers')
end

get '/programmers' do
#List all programmers names in DB
  @programmers = Programmer.all
  erb :index
end

get '/programmers/:id' do
#Display programmer
  @programmer = Programmer.find(params[:id])
  erb :print
end
post '/programmers/:id' do
#Display programmer

end