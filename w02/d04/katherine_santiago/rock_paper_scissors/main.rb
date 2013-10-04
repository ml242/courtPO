require 'sinatra'
require 'sinatra/reloader' if development?


get '/' do
    erb :game
end


get '/game' do
    @choice = params[:choice]
    @comp = ["rock", "paper", "scissors"].shuffle.sample
    @winner = ["You rock!", "Yayer!", "Woot!", "You're a winner!"].shuffle.sample
    @loser = ["Ewwww", "No way, Jose!", "Awww, you suck!", "Sigh.", ":(", "You stink at this."].shuffle.sample
    @tie = ["No bueno", "boring...", "snore"].shuffle.sample
    erb :game
end