require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'httparty'
require 'json'
require 'rainbow'
require 'cgi'

quotes = [
    "'Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.' Samuel L. Jackson, UNBREAKABLE",
  "'You know, we are sitting here, you and I, like a couple of regular fellas. You do what you do, and I do what I gotta do. And now that we've been face to face, if I'm there and I gotta put you away, I won't like it. But I tell you, if it's between you and some poor bastard whose wife you're gonna turn into a widow, brother, you are going down.' Al Pacino, HEAT",
  "'The first time I set eyes on Mary Swanson, I just got that old fashioned romantic feeling where I'd do anything to bone her.' Jim Carrey, DUMB AND DUMBER ",
  "'There's a hundred-thousand streets in this city. You don't need to know the route. You give me a time and a place, I give you a five minute window. Anything happens in that five minutes and I'm yours. No matter what. Anything happens a minute either side of that and you're on your own. Do you understand?' Ryan Goslin, DRIVE",
  "'Don't you want to take a leap of faith? Or become an old man, filled with regret, waiting to die alone' Ken Watanabe, INCEPTION",
  "'Well Jules, the funny thing about my back is that it's located on my cock.' Jonah Hill, SUPERBAD"
]

# Create a single page Sinatra app that queries the Open Movies DB API by movie title
get '/' do
    @quote = quotes.sample
    erb :index
end

get '/movies/search' do
  erb :search
end

# When a user submits the search form, redirect them to localhost:4567/movies/search and display the list of returned movie titles
get '/movies/results' do
  query = CGI::escape(params[:query])
  url = "http://www.omdbapi.com/?"
  s = 's=' + query
  url += s
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)

  if parsed_result.key?('Error')
    @results = parsed_result['Error']
  else
    @results = parsed_result['Search']
  end
  erb :result
end

get '/movies/:imdbID' do
  url = "http://www.omdbapi.com/?"
  imdbID = params[:imdbID]
  i = 'i=' + imdbID
  url += i
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
  @results = parsed_result
  @title_search = CGI::escape(@results['Title'])
  erb :movie
end
