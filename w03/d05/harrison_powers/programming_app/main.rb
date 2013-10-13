require 'sinatra'
require 'slim'
require 'pg'
require 'twitter'
require 'github_api'
require 'active_record'
require_relative 'programmer'

Twitter.configure do |config|
  config.consumer_key = 'JSPEHTHsmt8SPOo09PljcQ'
  config.consumer_secret = 'roMNGuN4ATZAkXxNLNb5WrwQPhiL8j9oRP11058jNvE'
  config.oauth_token = '1464668084-ZSyGijIqzDyjq9ORjyjsNKChdxzZ6qSvLmviHaW'
  config.oauth_token_secret = '8GUUXS4yhARX1KLWoUH8H2Bq3YIAKXlttXcLS2zM'
end

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
