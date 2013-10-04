require 'sinatra'
require 'sinatra/reloader' if development?
# require 'pry'
## Rock Paper Scissors
# ---
# * Create a Sinatra app for rock paper scissors
# * Have an input field where the user can enter 'rock' 'paper' or 'scissors'
# * when a user click's on 'play' display "win", "lose" or "tie"
# * Style it cool
GUESSES = ['Rock', 'Paper', 'Scissors']

get '/' do
    @title="Roshambo"
    result = params['query']
    if result == 'Rock'
        @Rock = result
    elsif result == 'Paper'
        @Paper = result
    elsif result == 'Scissors'
        @Scissors = result
    def tie(result)
        GUESSES.sample
        if GUESSES.sample == @Rock || GUESSES.sample == @Paper || GUESSES.sample == @Scissors
            result = @tie
        end
    end
end
    erb :index
end

# make another route called dad

get '/dad' do
    @image_url = "http://ia.media-imdb.com/images/M/MV5BMTUyMjI1MDEyN15BMl5BanBnXkFtZTYwNzkwNjI2._V1._SX309_SY450_.jpg"
    @things= ["Loves reading the newspaper", "Cheats at board games", "Walks around naked"]
# render an erb file called dad
    erb :dad
end

# display an image of the celebrity they look like
# the image url should be an instance variable
