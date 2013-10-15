require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'active_record'
require 'pry'

before do
  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "anagiraldo-w",
    :password => "",
    :database => "wdinstagram_db")
end

after do
  ActiveRecord::Base.connection.close
end

class Photo < ActiveRecord::Base
end

post '/photos/delete/:id' do
  id = params[:id]
  Photo.delete(id)
  redirect to ('/photos')
end

post '/photos' do
  author = params[:author]
  img_url = params[:img_url]
  date_taken = params[:date_taken]
  photo = Photo.create({author: author, img_url: img_url, date_taken: date_taken})
  redirect to ('/photos')
end

get '/photos' do
  @photos = Photo.all
  # get photo attributes out of wdinstagram_db
  erb :photos
end

get '/photos/add' do
  erb :add_photo
end

get '/photos/update/:id' do
  id = params[:id]
  author = params[:author]
  img_url = params[:img_url]
  date_taken = params[:date_taken]
  photo = Photo.find(id)
  photo.author = '#{author}'
  photo.img_url = '#{img_url}'
  photo.date_taken = '#{date_taken}'
  erb :update_photo
end

get '/photos/:id' do
  id = params[:id]
  @photo = Photo.find(id)
  erb :photo_page
end