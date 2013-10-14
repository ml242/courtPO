require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

get '/' do
end


get '/programmers' do
  "will display a list of all programmers names"
  # connect to database
  # pull all names & ids from database
  # send names (to be displayed as text) and ids (to be used in links) to .erb file
end


get '/programmers/:id' do
  "will display all information for one (the selected) programmers"
  # connect to database
  # pull all data associated with selected id
  # send name, username & image to .erb file to be displayes
end



















