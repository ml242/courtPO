require 'httparty'
require 'json'
require 'rainbow'
require 'cgi'


def api_call_search(url)
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
  puts parsed_result.to_s.color(:red)

  if parsed_result.key?('Error')
    @results = parsed_result['Error']
  else
    @results = parsed_result['Search']
  end

end


def api_call_imdbID(url)
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
  puts parsed_result.to_s.color(:red)
  #binding.pry
  @results = parsed_result
  @title_search = CGI::escape(@results['Title'])
end