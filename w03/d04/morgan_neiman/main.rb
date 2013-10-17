require 'active_record'
require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'execjs'
require_relative 'active_record'

before  do
  ActiveRecord::Base.logger = Logger.new( STDOUT )

  ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Ducky",
  :password => "",
  :database => "instagram_db"
  )
end


after do
  ActiveRecord::Base.connection.close
end

class Entry < ActiveRecord::Base
end

class User < ActiveRecord::Base
end

get '/' do
  redirect to '/photos'
end

get '/photos' do
  @entries_array = Entry.order("id DESC").all
  erb :index
end

get '/photos/new' do
  @user_array = User.all
  erb :new
end

post '/photos' do
  e1 = Entry.new
  e1.author_id = params[:username]
  e1.photo = params[:photo]
  e1.date_taken = params[:date_taken]
  e1.filter = params[:filter]
  e1.save
  id = e1.id.to_s
  url = '/photos/' + id
  redirect to url
end

get '/photos/:id' do
  id = params[:id].to_i
  @entry = Entry.find(id)
  erb :single_photo
end

get '/users/new' do
  erb :sign_up
end

post '/users' do
  username = params[:username]
  if User.exists?(username: username)
    redirect to '/username_error'
  else
    user = User.new
    user.username = username
    user.save
    redirect to '/photos'
  end
end

get '/username_error' do
  erb :username_error
end

get '/:username' do
  username = params[:username]
  user = User.where("username = '#{username}'")
  user_id = user.first.id.to_i
  @author = user.first.username
  @user_photos = Entry.where(author_id: user_id)
  erb :username
end

get '/photos/:id/edit' do
  id = params[:id].to_i
  @user_array = User.all
  @photo = Entry.find(id)
  erb :update_photo
end

post '/photos/:id' do
  id = params[:id].to_i
  e1 = Entry.find(id)
  e1.author_id = params[:username]
  e1.photo = params[:photo]
  e1.date_taken = params[:date_taken]
  e1.filter = params[:filter]
  e1.save
  id = e1.id.to_s
  url = 'photos/' + id
  redirect to url
end

get '/photos/:id/delete' do
  id = params[:id].to_i
  @entry = Entry.find(id)
  erb :delete_confirmation
end

post '/photos/:id/delete' do
  choice = params[:delete]
  user_id = params[:id].to_i
  if choice == "yes"
    Entry.find(user_id).destroy
  end
  redirect to '/photos'
end

