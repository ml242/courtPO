require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'active_record'
require 'github_api'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Hint",
  :password => "",
  :database => "programming_db"
)

helpers do
  def before
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "Hint",
      :password => "",
      :database => "programming_db"
    )
  end
  def after
    ActiveRecord::Base.connection.close
  end
end

#ActiveRecord::Base.connection.close

class Programmer < ActiveRecord::Base
end

get '/' do
  redirect to('/programmers')
end

get '/programmers' do
  before
  @programmers = Programmer.all
  #binding.pry
  after
  erb :programmers
end

get '/programmers/:id' do
  id = params[:id]
  before
  @programmer = Programmer.find(id)
  after
  erb :programmers_id
end

get '/programmers/:id/edit' do
  id = params[:id]
  #binding.pry
  before
  @programmer = Programmer.find(id)
  after
  erb :programmers_edit
end

post '/programmers/:id' do
  id = params[:id]
  before
  programmer = Programmer.find(id)
  name = params[:name]
  twitter_username = params[:twitter_username]
  twitter_pic = params[:twitter_pic]
  github_username = params[:github_username]
  #binding.pry
  programmer.name = name
  programmer.twitter_username = twitter_username
  programmer.twitter_pic = twitter_pic
  programmer.github_username = github_username

  programmer.save
  after
  redirect to("/programmers/#{id}")
end

