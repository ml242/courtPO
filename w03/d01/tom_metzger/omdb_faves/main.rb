require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

require 'json'
require 'httparty'
require 'cgi'

@titles = []
@id = []

# @attributes = ["Title", "Year", "Rated", "Released", "Runtime", "Genre", "Director", "Writer", "Actors", "Plot"]


# this get request will recieve a browser request from localhost/ in the address bar and will call the erb function on the index.erb file indicated by the :index file, this "points" to the index.erb file and the function will return a string, the contents of index.erb will be evaluated
get '/' do
  erb :index
end

# this GET method will respond to the request from the index.erb form in this case and the following code will be executed
get '/movies' do
  # this line places the value from the params hash into the title_spaces variable, it is titled this way because it has spaces in the values that were returned
  title_spaces = params[:query]
  # line 24 removes the spaces from the values that are returned so that the results can be used in a URL
  title = CGI::escape(title_spaces)
  # line 27 creates the url that will be insert into HTTParty to make the request to the 3rd party server and string interpolates the user's query from the index.erb form into the search portion of the url
  url = "http://www.omdbapi.com/?s=#{title}"
  # line 29 sends a query to HTTParty and captures the response in result
  result = HTTParty.get(url)
#I should add logical to check that the result is an actual result and taht the user didn't submit an inappropriate request
  # HTTParty returns a text string because the header doesn't specify that the response is json interpretable so we need to parse the reply into JSON so that we convert the reply into a hash instead of a string
  parsed_result = JSON.parse(result.body)
  # I create the @movie_hash Array to hold the values from the .each method as an array of hashes
  @movie_hash = []
  # line 36 takes the hash returned by JSON.parse and assigns the parsed variable to the array value from the JSON hash
  parsed = parsed_result["Search"]
  # this .each iterates through the parsed array of hashes and converts the keys which are strings, into symbols and assigns the current values to the new symbol keys
    parsed.each do |movie|
      imdb_number = movie["imdbID"]
      url = "/search/#{imdb_number}"
      @movie_hash << {
        :title => movie["Title"],
        :year => movie["Year"],
        :url => url,
        :type => movie["Type"]
      }
    end
  # line 49 calls the erb method on the results.erb file -- see that file for the next steps and output
  erb :results
end



get '/search/:imdb_ID' do
  "this works"
  movie_number = params[:imdb_ID]
  url = "http://www.omdbapi.com/?i=#{movie_number}"
  result = HTTParty.get(url)
  parsed_result = JSON.parse(result.body)
  @result_symbols_hash = {}
    parsed_result.keys.each do |key|
      @result_symbols_hash[key.downcase.to_sym] = parsed_result[key]
    end
  google_query = []
  google_query << @result_symbols_hash[:title].split(" ")
  google_query << @result_symbols_hash[:year].split(" ")
  @google = google_query.join("+")
  erb :imdbID
end
