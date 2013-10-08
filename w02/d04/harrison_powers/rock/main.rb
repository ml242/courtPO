require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'game_engine'

user = User.new

get '/' do
	@title = "Your choice!"
  if params.has_key?('choice')
  	@outcome = user.determine_outcome(params[:choice])
  	@enemy = user.enemy
    @wins = user.wins
    @losses = user.losses
    @title = @outcome
  end

  erb :game
end