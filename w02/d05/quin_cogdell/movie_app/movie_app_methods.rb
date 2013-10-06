require 'httparty'
require 'json'
require 'rainbow'
require 'cgi'

def api_call(url)
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
end

def api_call_search(parsed_result)
  api_call(url)
  puts parsed_result.to_s.color(:red)

  if parsed_result.key?('Error')
    @results = parsed_result['Error']
  else
    @results = parsed_result['Search']
  end

end

def api_call_imdbID(url)
  api_call(url)
  puts parsed_result.to_s.color(:red)
  @results = parsed_result
  @title_search = CGI::escape(@results['Title'])
end




