require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'active_record'
require 'pg'

require_relative 'programmers.rb'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "joshoynick",
  :password => "",
  :database => "programming_db"
)

get '/programmers' do
  db_connection = PG.connect(
    :dbname => 'programming_db',
    :host => 'localhost')
  sql = "SELECT * FROM programmers"
  response = db_connection.exec(sql)
  db_connection.close
  @programmers = response.entries
  erb :programmers
end

get '/programmers/:id' do
  @id = params[:id].to_i
  db_connection = PG.connect(
    :dbname => 'programming_db',
    :host => 'localhost')
  sql = "SELECT * FROM programmers WHERE id = #{@id}"
  response = db_connection.exec(sql)
  db_connection.close
  @programmer = response.entries
  erb :id
end

get '/programmers/:id/edit' do

end

