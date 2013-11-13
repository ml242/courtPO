require 'active_record'
require "pry"
require "sinatra"
require "sinatra/reloader" if development?
require "pg"

before do
  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "eriese",
    :password => "",
    :database => "wdinstagram_db"
  )
end

after do
  ActiveRecord::Base.connection.close
end

class Photo < ActiveRecord::Base
end

get "/photos" do
  @photos = Photo.all
  @photos.sort!{|p1, p2| p2["date_taken"] <=> p1["date_taken"]}
  erb :index
end
get "/photos/new" do
  erb :new
end
post "/photos" do
  p1 = Photo.new
  p params
  p1.author = params[:author]
  p1.date_taken = params[:date_taken]
  p1.url = params[:url]
  p1.save
  redirect to "/photos/#{p1.id}"
end
get "/photos/where" do
  @photos = Photo.where(params)
  erb :index
end
get "/photos/:id" do
  @photo = Photo.find(params[:id])
  erb :show
end

