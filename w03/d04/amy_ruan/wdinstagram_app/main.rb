require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'active_record'
require_relative 'entries'

  ActiveRecord::Base.logger = Logger.new( STDOUT )

  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "Amy",
    :password => "",
    :database => "wdinstagram"
  )

    ActiveRecord::Base.connection.close




get '/' do
  redirect to ('/photos')
end

get '/photos' do
  @entries = Entry.all
  erb :index
end

post '/photos' do
  author=params[:author]
  photo_url=params[:photo_url]
  date_taken=params[:date_taken]
  @new_entry = Entry.create(:author => author, :photo_url => photo_url,
    :date_taken => date_taken)
  "You have successfully added a photo!"
end

get '/photos/new' do
  "hello"
  erb :create
end

get '/photos/:id' do
  id = params[:id]
  picture = Entry.find_by(id: id)
  @author = picture[:author]
  @date_taken = picture[:date_taken].to_s
  @photo_url = picture[:photo_url].to_s
  erb :show
end
