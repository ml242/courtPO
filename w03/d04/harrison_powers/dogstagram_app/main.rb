require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'active_record'
require 'slim'

require_relative 'entry'

before do
  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "fijimunkii",
    :password => "",
    :database => "wdstagram_db"
  )
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  redirect to('/photos')
end

get '/photos' do
  @entries = Entry.all
  slim :index
end

post '/photos/add' do
  author = params[:author]
  photo = params[:photo]
  date = params[:date]
  entry = Entry.new({
    :author => author,
    :photo => photo,
    :date => date
    })
  entry.save
  redirect to('/photos')
end

get '/photos/:id' do
  id = params[:id]
  @entry = Entry.find(id)
  slim :photo
end
