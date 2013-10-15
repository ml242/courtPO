require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'active_record'
require 'slim'
require 'github_api'

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
  @id = params[:id]

  before
  programmer = Programmer.find @id
  @name = programmer.name
  @twitter_username = programmer.twitter_username
  @twitter_pic = programmer.twitter_pic
  @github_username = programmer.github_username
  after

  github_response = Github.repos.list user: "#{@github_username}"
  @repos = github_response.body

  slim :single_programmer
end

get '/programmers/:id/edit' do
  @id = params[:id]

  before
  programmer = Programmer.find @id
  @name = programmer.name
  @twitter_username = programmer.twitter_username
  @twitter_pic = programmer.twitter_pic
  @github_username = programmer.github_username
  after

  slim :edit_programmer
end

post '/programmers/:id' do
  id = params[:id]
  name = params[:name]
  twitter_username = params[:twitter_username]
  twitter_pic = params[:twitter_pic]
  github_username = params[:github_username]

  before
  programmer = Programmer.find id
  programmer.name = name
  programmer.twitter_username = twitter_username
  programmer.twitter_pic = twitter_pic
  programmer.github_username = github_username
  programmer.save
  after

  redirect to "/programmers/#{id}"
end



