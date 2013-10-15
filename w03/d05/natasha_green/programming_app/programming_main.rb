require 'active_record'
require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?

#ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :database => 'programming_db',
  :username => 'natashagreen',
  :password => ' '
)

#class Programmer <ActiveRecord::Base
#end

get '/programmers' do
   puts "You are smart"
   @programmers = Programmer.all
   erb :'programmers'
end

get '/programmers/:id' do
  puts " you got this"
  @programmer = Programmer.find(params[:id])
  @name = @programmer.name
  @twitter_username = @programmer.twitter_username
  @twitter_pic = @programmer.twitter_pic
  erb :'show'
end


#ActiveRecord::Base.connection.close


