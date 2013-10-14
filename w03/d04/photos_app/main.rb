require 'active_record'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

class Photo < ActiveRecord::Base

end

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "MTK",
  :password => "",
  :database => "photos_db"
)

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  redirect to('/photos')
end

get '/photos/new' do
#form to create new entry
  erb :new
end

get '/photos' do
#displays all the photos.
 @photos = Photo.all
  erb :index
end

post '/photos' do
#create new photo in the db
  url = @params["url"]
  date = @params["date"]
  author = @params["author"]
  pnew = Photo.new({ url: url, date: date, author: author})
  pnew.save
  id = pnew['id'].to_i
  redirect to("/photos/#{id}")
end

get '/photos/:pid' do
#display photo from photo id
  @pid = params['pid'].to_i
  pnew = Photo.find(@pid)
  @url = pnew.url
  @author = pnew.author
  @date = pnew.date
  erb :show
end

get '/photos/:pid/edit' do
#make form to update properties of photo from id
  binding.pry
  @pid = params[:pid]
  erb :edit
end

post '/photos/:pid' do
  pid = params[:pid]
  photo = Photo.find(pid)
  photo.name = the_new_name
#photo.save

  redirect to('/photos')
end

post '/photos/:pid/delete' do
  binding.pry
  pid = params[:id]
  photo = Photo.find(pid)
  photo.destroy
  redirect to('/photos')
end



