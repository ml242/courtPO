require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "EddieShin",
  :password => "",
  :database => "instagram_db"
)

class Entry <ActiveRecord::Base
end

helpers do
  def add_new(entry_hash)
    new_entry = Entry.new
    new_entry.author = entry_hash[:author]
    new_entry.photo = entry_hash[:photo]
    new_entry.date_taken = entry_hash[:date_taken]
    new_entry.save
  end
end

get '/' do
  show = Entry.all
  @display=show.entries
  erb :index
end

get '/new' do
  erb :new
end

post '/create' do
  entry_hash = params
  add_new(entry_hash)
  redirect to ('/')
end

get '/show/:id' do
  selected_image = Entry.where(id:params[:id])
  @image_info = selected_image.entries[0]
  erb :show
end