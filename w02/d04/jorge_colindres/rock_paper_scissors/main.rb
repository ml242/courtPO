require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  @params = params
  @choice = params[:choice].to_s.downcase
  @game_outcome = ["Win", "Loose", "Tie"].sample
  erb :game
end