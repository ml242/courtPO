require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'active_record'
require_relative 'programmer'

  ActiveRecord::Base.logger = Logger.new( STDOUT )

  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "Amy",
    :password => "",
    :database => "programming_db"
  )

    ActiveRecord::Base.connection.close

COLOR = ["#FFBF00", "#FACADE","#0080FF","#01DF3A","#FF0080"]

get "/" do
  redirect ('/programmers')
end

get "/programmers" do
  @color = COLOR.sample
  @programmers = Programmer.all
  erb :programmers
end

get "/programmers/:id" do
  @color = COLOR.sample
  @id = params[:id].to_i
  @programmer = Programmer.find(@id)
  erb :programmers_id

end
