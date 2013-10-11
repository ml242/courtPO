require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'active_record'
require 'pg'

# 1. Start by setting up your database using SQL: -->DONE
#   * Plan your schema --> DONE
#   * Create your database --> DONE
#   * Test your database using psql --> DONE

require_relative 'users'
require_relative 'pics'

before do
  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "willsmith",
    :password => "",
    :database => "pics_db"
  )
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  erb :index
end

get '/pics' do
  @pics = Pics.all
  @users = Users.all
  erb :pics
end

post '/pics/upload' do
  user = params[:user_id]
  photo = params[:img_url]
  date = params[:date_created]
  Pics.create({
    :img_url => photo,
    :date_created => date,
    :user_id => user
    })
  redirect to('/pics/upload')
end

get '/pics/upload' do
  @users = Users.all
  erb :upload
end

get '/users/new' do
  erb :new_user
end

post '/users/new' do
  name = params[:name]
  Users.create({
    :name => name
    })
  redirect to('/pics/upload')
end

get '/pics/:id' do
  id = params[:id]
  @pic = Pics.find(id)
  user_id = @pic['user_id']
  @user = Users.find(user_id)
  erb :single_pic
end



