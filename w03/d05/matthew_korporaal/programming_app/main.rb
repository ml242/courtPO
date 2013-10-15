require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'github_api'
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

after do
  ActiveRecord::Base.connection.close
end

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
  if gh_handle = @programmer.github
    @gh_repo = Github.repos.list user: gh_handle
  end

  erb :print
end

post '/programmers/:id' do
#Edit programmer
  id = params[:id].to_i
  @programmer = Programmer.find(id)
  @programmer.name = params["prog-name"]
  @programmer.handle = params["prog-twitter"]
  @programmer.github = params["prog-github"]
  @programmer.twitter_pic = params["prog-url"]
  @programmer.save
  redirect to("/programmers/#{id}")
end

get '/programmers/edit/:id' do
  @programmer = Programmer.find(params[:id])
  erb :edit
end
