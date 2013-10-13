require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'
require 'pry'
require 'pg'
require 'pp'
require 'github_api'
require 'active_record'
require_relative 'programmer'

before do
  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "fijimunkii",
    :password => "",
    :database => "programming_db"
  )
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  redirect to('/programmers')
end

get '/programmers' do
  @programmers = Programmer.all
  @title = "The #{@programmers.count} Programmers"
  slim :index
end

post '/programmers' do
  name = params[:name]
  twitter_pic = params[:twitter_pic]
  twitter_username = params[:twitter_username]
  github_username = params[:github_username]
  programmer = Programmer.create(
    :name => "#{name}",
    :twitter_pic => "#{twitter_pic}",
    :twitter_username => "#{twitter_username}",
    :github_username => "#{github_username}",
  )
  redirect to("/programmers/#{programmer.id}")
end

get '/programmers/add' do
  @title = "Add a Programmer"
  slim :add
end

get '/programmers/:id' do
  id = params[:id].to_i
  @programmer = Programmer.find(id)
  @github = Github.repos.list user: "#{@programmer.github_username}"
  @title = "#{@programmer.name}"
  slim :view
end

post '/programmers/:id' do
  id = params[:id].to_i
  name = params[:name]
  twitter_pic = params[:twitter_pic]
  twitter_username = params[:twitter_username]
  github_username = params[:github_username]
  programmer = Programmer.find(id)
  programmer.name = name
  programmer.twitter_pic = twitter_pic
  programmer.twitter_username = twitter_username
  programmer.github_username = github_username
  programmer.save
  redirect to("/programmers/#{id}")
end

get '/programmers/:id/edit' do
  id = params[:id].to_i
  @programmer = Programmer.find(id)
  @title = "Edit #{@programmer.name}"
  slim :edit
end

post '/programmers/:id/delete' do
  id = params[:id].to_i
  Programmer.find(id).destroy
  redirect to('/programmers')
end
