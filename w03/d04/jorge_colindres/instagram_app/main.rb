require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'slim'

require_relative 'entry'


get '/instagram' do
  @entries = Entry.all

  slim :index
  # binding.pry
end

get '/instagram/entries/new' do
  # form to create new entry
end

post '/instagram/entries/new' do
  author = params[:author]
  date_taken = params[:date_taken]
  photo_url = params[:photo_url]
  # create a new entry and save to DB
  Entry.create :author => author, :date_taken => date_taken, :photo_url => photo_url
end

get 'instagram/entries/:id' do
  # dispaly a particular entry
end
