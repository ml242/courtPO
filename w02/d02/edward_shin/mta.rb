require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do

end

get '/plan' do 
erb :plan	
end