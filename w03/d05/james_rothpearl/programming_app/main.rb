require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'
require 'active_record'
require_relative 'programmer'


    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "jamesrothpearl",
      :password => "",
      :database => "programming_db"
    )

helpers do
  def before
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "jamesrothpearl",
      :password => "",
      :database => "programming_db"
    )
  end
  def after
    ActiveRecord::Base.connection.close
  end
end


get '/' do
  redirect_to('/programmers')
end

get '/programmers' do
  before
  @programmers = Programmer.all
  after

  erb :all_programmers
end

get '/programmers/:id' do
  before
  id = params[:id]
  @programmer = Programmer.find(id)
  after
  erb :programmer
end


