require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'  
require 'active_record'
require 'pry'
 
ActiveRecord::Base.logger = Logger.new( STDOUT )
 
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "postgres",
  :password => "home3232",
  :database => "instagram_db"
)

class Photo < ActiveRecord::Base
end

class Comment < ActiveRecord::Base
end

get '/photos/:id/comments/new' do
  @photo_id = params[:id]
  erb :add_comment
end

post '/photos/:id/comments' do
  id = params["photo_id"]
  text = params["text"]
  c = Comment.new
  c.text = text
  c.photo_id = id
  c.save
  redirect "/photos/#{id}"
end

get '/' do
  redirect '/photos'
end

get '/photos' do
  @photos = Photo.all
  @comment_count = Comment.all
  erb :display_photos
end

post '/photos' do
  photo = Photo.new
  photo.author = params["author"]
  photo.date_taken = params["date_taken"]
  photo.photo_url = params["photo_url"]
  photo.save
  redirect '/'
end

get '/photos/new' do
  erb :new_photo
end

get '/photos/:id' do
  id = params[:id]
  @photo = Photo.find(id)
  @comments = Comment.where(photo_id: id)
  erb :display_photo
end

post '/photos/:id/delete' do
  photo = Photo.find(params["id"])
  photo.delete
  redirect '/photos'
end


