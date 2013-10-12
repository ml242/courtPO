require 'sinatra'
require 'sinatra/reloader' if development?
require 'github_api'
require 'pry'
require_relative 'act_rec'
require_relative 'models/programmer'

get '/programmers' do
  @programmers = Programmer.order("name ASC").all
  erb :programmers
end

get '/programmers/:id/edit' do
  @id = params[:id]
  @programmer = Programmer.find(@id)

  erb :edit
end

get '/programmers/:id/repos' do
  @id = params[:id]
  @repos = []
  @programmer = Programmer.find(@id)
  repos = Github.repos.list :user => @programmer.github_username
  repos.each do |repo|
    @repos << {
      :name => repo["name"], 
      :description => repo["description"],
      :url => repo["html_url"]
    }
  end
  erb :repos
end

get '/programmers/:id' do
  id = params[:id]
  @programmer = Programmer.find(id)
  erb :programmer
end

post '/programmers/:id' do
  id = params["id"]
  github_username = params["github_username"]
  p = Programmer.find(id)
  p.github_username = github_username
  p.save
  redirect '/programmers'
end
