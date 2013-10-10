require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'slim'

require_relative 'entry'


get '/instagram' do
  @entries = Entry.all
  slim :index
end

get '/instagram/entries/new' do
  slim :new
end

post '/instagram/entries/new' do
  author = params[:author]
  date_taken = params[:date_taken]
  photo_url = params[:photo_url]
  # create a new entry and save to DB
  Entry.create :author => author, :date_taken => date_taken, :photo_url => photo_url
  redirect to '/instagram'
end

get '/instagram/entries/:id' do
  image_id = params[:id]
  @entry = Entry.find image_id
  slim :entry
end
