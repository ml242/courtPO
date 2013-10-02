require 'sinatra'
require 'sinatra/reloader' if development?

MTA = { :l_train => ['bedford', '1st ave'], :g_train => ['greenpoint', 'nassau'], :n_train => ['canal', '8th'], }


get '/plan' do
  @l_train = MTA.keys[0]
  @g_train = MTA.keys[1]
  @n_train = MTA.keys[2]
  erb :plan
end

get '/plan/:line' do
  line = params[:line].to_sym
  @stops = MTA.fetch(line)
  erb :stops
end


