
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'active_record'
require 'pry'
require_relative 'programmer'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'vanderhoop',                                             #ENTER YOUR USERNAME OR BE FOREVER FRUSTRATED
  :password => '',
  :database => 'programming_db'      #ENTER THE DATABASE YOU WANT TO WORK WITH OR DIE UNHAPPY
)

# programmers = Programmer.all


get '/' do

  erb :hello
end

get '/programmers' do
  programmers = Programmer.all.to_a #grabs all programmer profiles from the programmers table in the programming_db, and converts them to a data-retrievable array.
  # @programmers = programmers.to_a
  @programmers = programmers
  erb :programmers
end

get '/programmers/:id/edit' do
  id = params[:id]                                      #NOTE: id may need to be converted to an integer using .to_i
  @id = id                                                   #converted to instance variable for use in linking back to the profile page
  programmer = Programmer.all.find(id)
  @name = programmer[:name]
  @twitter_username= programmer[:twitter_username]
  @twitter_pic = programmer[:twitter_pic]
  erb :edit_programmer
end

get '/programmers/:id' do
  id = params[:id]                                      #NOTE: id may need to be converted to an integer using .to_i
  @id = id                                                   #converted to instance variable so I could use it for the link to the edit page
  programmer = Programmer.all.find(id)
  @name = programmer[:name]
  @twitter_username= programmer[:twitter_username]
  @twitter_pic = programmer[:twitter_pic]
  #========================
  #Update Parameters below
  #========================
  @new_name = params[:new_name]

  erb :programmer
end

post '/programmers/:id' do
  id = params[:id]                                                    #find id so we can seek out and edit the entry in question
  programmer = Programmer.all.find(id)                    #=================================
  new_name = params[:new_name]
  new_twitter_pic = params[:new_twitter_pic]
  new_twitter_username = params[:new_twitter_username]
  new_github_handle = params[:new_github_username]
  programmer.name=new_name
  programmer.twitter_pic = new_twitter_pic
  programmer.twitter_username = new_twitter_username
  programmer.github_username = new_github_handle
  programmer.save
  redirect to '/programmers'
end








