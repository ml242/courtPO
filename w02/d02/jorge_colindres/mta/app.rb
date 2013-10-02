require 'sinatra'
require 'sinatra/reloader' if development?

MTA = { :l_train => ['bedford', '1st ave'], :g_train => ['greenpoint', 'nassau'], :n_train => ['canal', '8th'], }


get '/plan' do
  @l_train = MTA.keys[0].to_s.sub("_", " ")
  @g_train = MTA.keys[1].to_s.sub("_", " ")
  @n_train = MTA.keys[2].to_s.sub("_", " ")
  erb :plan
end

get '/plan/:line' do
  line = params[:line].to_sym
  @stops = MTA.fetch(line)
  erb :stops
end


