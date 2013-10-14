require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'active_record'
require 'slim'

require_relative 'programmer'

helpers do
  def before
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "JC",
      :password => "",
      :database => "programming_db"
    )
  end
  def after
    ActiveRecord::Base.connection.close
  end
end

get '/programmers' do
  before
  @all_programmers = Programmer.all
  after

  slim :all_programmers
end

get '/programmers/:id' do
  id = params[:id]
  programmer = Programmer.find id
  @name = programmer.name
  @twitter_username = programmer.twitter_username
  @twitter_pic = programmer.twitter_pic

  slim :single_programmer
end
