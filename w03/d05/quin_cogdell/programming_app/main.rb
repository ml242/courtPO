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
  @results = Programmer.all
  erb :programmers
end

post '/programmers' do
  id = params[:id]
  name = params[:name]
  twitter_pic = params[:twitter_pic]
  twitter_username = params[:twitter_username]
  redirect to '/'
end




get '/programmers/:id' do
  @results = Programmer.find(params[:id])
  erb :programmers_single
end

get '/programmers/:id/edit' do
  @results = Programmer.find(params[:id])
  erb :programmers_edit
end
