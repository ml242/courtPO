require 'httparty'
require 'json'
require 'rainbow'
require 'cgi'

# http://www.omdbapi.com/
# s (NEW!)   string (optional)   title of a movie to search for
# i  string (optional)   a valid IMDb movie id
# t  string (optional)   title of a movie to return
# y  year (optional)   year of the movie
# r  JSON, XML   response data type (JSON default)
# plot   short, full   short or extended plot (short default)
# callback   name (optional)   JSONP callback name
# tomatoes   true (optional)   adds rotten tomatoes data


def api_call(url)
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
end

def api_call_search(url)
  parsed_result = api_call(url)
  puts parsed_result.to_s.color(:red)

  if parsed_result.key?('Error')
    results = parsed_result['Error']
  else
    results = parsed_result['Search']
  end

end

def api_call_imdbID(url)
  parsed_result = api_call(url)
  puts parsed_result.to_s.color(:red)
  results = parsed_result
end




