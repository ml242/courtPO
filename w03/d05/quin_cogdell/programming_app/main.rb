require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'
require 'active_record'
require_relative 'programmer'

helpers do
  before  do
    ActiveRecord::Base.logger = Logger.new( STDOUT )

    ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "quincogdell",
    :password => "",
    :database => "programming_db"
    )
  end

  after do
    ActiveRecord::Base.connection.close
  end

end



get '/' do
  redirect to '/programmers'
end

get '/programmers' do
  @results = Programmer.all.order('id ASC')
  erb :programmers
end



get '/programmers/:id' do
  @results = Programmer.find(params[:id])
  erb :programmers_single
end

get '/programmers/:id/edit' do
  @results = Programmer.find(params[:id])
  erb :programmers_edit
end


post '/programmers/:id' do
  id = params[:id]
  name = params[:name]
  twitter_pic = params[:twitter_pic]
  twitter_username = params[:twitter_username]
  github_username = params[:github_username]
  programmer = Programmer.find(id)
  programmer.update(name: name, twitter_pic: twitter_pic, twitter_username: twitter_username, github_username: github_username )
  programmer.save
  redirect to '/programmers'
end

post '/programmers/:id/delete' do
  id = params[:id]
  programmer = Programmer.find(id)
  programmer.destroy
  redirect to '/programmers'
end
