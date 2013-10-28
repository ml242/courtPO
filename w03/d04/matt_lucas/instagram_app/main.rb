require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'HTTParty'
require 'JSON'
require 'active_record'

#these are just classe
class Photo < ActiveRecord::Base  #"translates" Ruby into SQL

end

before do
  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "ML",
    :password => "",
    :database => "insta_db"
  )
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
# `on this page, `i want to see links to two things
  # When I click on the browse link, I want to see al of the photos (GET/photos)
  # When I click on the "input photo link" I want to be taken to a form that can be found on GET /photos/new
  erb :index
end

get '/photos' do
  @feed = Photo.all
  erb :photos
end

# #post a new photo
get '/photos/new' do
  erb :new
end

#Post photos
post '/photos' do
  photo1 = Photo.new
  name = params[:name]
  img_url = params[:img_url]
  date_taken = params[:date_taken]
  photo1.name = name
  photo1.img_url = img_url
  photo1.date_taken = date_taken
  photo1.save
  binding.pry
  redirect to('/photos')
end

# #load a particular photo
# get photos/:1

# When a users sees this page, show them the photo with the first id
  # First use Acttive Record to find the item with the first id
  # I need to take out 3 different things from the active record object
    # the author
    # the url
    # and the date taken
  # I will make an instance variable for each one so that I can access them in my views
  # Then I need to render the view
# #details include name and whatever
# end
