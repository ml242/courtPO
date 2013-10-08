require 'sinatra'
require 'sinatra/reloader' if development?
require 'debugger'
require 'pry'

def parameterize(url)
  params = {}
  query = url.split('?').last
  query.split('&').each do |kv_pair_string|
    kv_array = kv_pair_string.split('=')
    key = kv_array.first
    value = kv_array.last
    params[key] = value
    params[key.to_sym] = value
  end
end

before do
  debugger
end

get "/" do
  uri = request.env["REQUEST_URI"]
  @harrisons_params = parameterize(uri)
  debugger
  "3"
end
