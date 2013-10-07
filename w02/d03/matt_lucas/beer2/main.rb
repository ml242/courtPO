require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  @num_beers = 99
  `say #{@num_beers} bottles of beer on the wall, #{@num_beers} bottles of beer`
  erb :beers
end