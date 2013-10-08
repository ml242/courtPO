require 'sinatra'
require 'sinatra/reloader' if development?


$num_beers = 99


get '/' do
  `say #{$num_beers} bottles of beer on the wall, #{$num_beers} bottles of beer`
  erb :beers
end