require 'sinatra'
require 'sinatra/reloader' if development?
# require 'pry'
# require_relative "public"

MTA = { :l_train => ['bedford', '1st ave'], :g_train => ['greenpoint', 'nassau'], :n_train => ['canal', '8th'] }

# class Trip
#   def initialize(name)
#     @name = MTA.key
#   end
# end

get '/plan' do
  File.read(File.join('public', 'index.html'))
end

get '/plan/:name' do
  x = MTA[params[:name]]
  File.read(File.join('public','ltrain.html'))
end

