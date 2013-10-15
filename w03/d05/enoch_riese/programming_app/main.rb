require "pry"
require 'active_record'
require 'pg'
require "sinatra"
require "sinatra/reloader"

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "eriese",
  :password => "",
  :database => "programming_db"
)
class Programmer < ActiveRecord::Base
end
get "/programmers" do
  @list = Programmer.all
  erb :programmers
end
get "/programmers/:id" do
  @prog = Programmer.find(params[:id])
  erb :programmer_profile
end
