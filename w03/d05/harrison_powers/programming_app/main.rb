require 'sinatra'
require 'slim'
require 'pg'
require 'twitter'
require 'github_api'
require 'active_record'
require 'uri'
require_relative 'programmer'

Twitter.configure do |config|
  config.consumer_key = 'JSPEHTHsmt8SPOo09PljcQ'
  config.consumer_secret = 'roMNGuN4ATZAkXxNLNb5WrwQPhiL8j9oRP11058jNvE'
  config.oauth_token = '1464668084-ZSyGijIqzDyjq9ORjyjsNKChdxzZ6qSvLmviHaW'
  config.oauth_token_secret = '8GUUXS4yhARX1KLWoUH8H2Bq3YIAKXlttXcLS2zM'
end

configure :development do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///programming_db')

  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => 'localhost',
    :username => 'fijimunkii',
    :password => '',
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end

configure :production do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///programming_db')

  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
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

get '/programmers/:id' do
  id = params[:id].to_i
  @programmer = Programmer.find(id)
  @github = Github.repos.list user: "#{@programmer.github_username}"
  @twitter = Twitter.user_timeline("#{@programmer.twitter_username}")
  @title = "#{@programmer.name}"
  @programmers = Programmer.all
  @header = "The #{@programmers.count} Programmers"
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
  @programmers = Programmer.all
  @header = "The #{@programmers.count} Programmers"
  slim :edit
end

post '/programmers/:id/delete' do
  id = params[:id].to_i
  Programmer.find(id).destroy
  redirect to('/programmers')
end
