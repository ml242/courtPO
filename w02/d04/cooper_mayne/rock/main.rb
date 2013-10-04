require 'sinatra'
require 'sinatra/reloader'
require_relative 'rock'

get '/' do
  if params.include?('choice')
    @choice = params[:choice]
    game = Rock.new
    @result = game.play(@choice)
  end
  erb :index
end
