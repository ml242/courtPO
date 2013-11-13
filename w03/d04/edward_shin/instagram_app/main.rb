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
    new_entry
  end
end

get '/photos' do
  show = Entry.all
  @display=show.entries
  erb :index
end

get '/photos/new' do
  erb :new
end

post '/photos' do
  entry_hash = params
  new_entry = add_new(entry_hash)
  url = "/photos/#{new_entry.id}"
  binding.pry

  redirect to (url)
end

get '/photos/:id' do
  selected_image = Entry.where(id:params[:id])
  @image_info = selected_image.entries[0]
  erb :show
end