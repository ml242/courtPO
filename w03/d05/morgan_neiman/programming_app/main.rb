require 'active_record'
require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'github_api'
require 'JSON'
require_relative 'active_record'

class Person < ActiveRecord::Base
end

before  do
  ActiveRecord::Base.logger = Logger.new( STDOUT )

  ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Ducky",
  :password => "",
  :database => "programming_db"
  )
end


after do
  ActiveRecord::Base.connection.close
end

get '/programmers' do
  programmers = Person.all
  # binding.pry
  @programmer_names = []
  programmers.entries.each do |programmer|
    @programmer_names << programmer.name
  end
  erb :programmers
end

get '/programmers/:id' do
  id = params[:id].to_i
  person = Person.find(id)
  @name = person.name
  @twitter_pic = person.twitter_pic
  @twitter_username = person.twitter_username
  @github = person.github_username
  repos = Github.repos.list user: @github
  repos = repos.body
  @repos_array = []
  repos.each do |repo|
    name = repo['name']
    url = repo['html_url']
    @repos_array << {:name => name, :url => url}
  end
  erb :programmer
end


get '/programmers/:id/edit' do
  id = params[:id].to_i
  @person = Person.find(id)
  erb :programmer_edit
end

post '/programmers/edit' do
  id = params[:id].to_i
  name = params[:name]
  twitter_pic = params[:twitter_pic]
  twitter_username = params[:twitter_username]
  github_username = params[:github_username]
  person = Person.find(id)
  person.name = name
  person.twitter_pic = twitter_pic
  person.twitter_username = twitter_username
  person.github_username = github_username
  person.save
  url = '/programmers/' + id.to_s
  redirect to url
end






