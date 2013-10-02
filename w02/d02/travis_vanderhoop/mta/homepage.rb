require 'sinatra'
require 'sinatra/reloader' if development?

MTA = { :l_train => ['bedford', '1st ave'], :g_train => ['greenpoint', 'nassau'], :n_train => ['canal', '8th']}


get '/plan/l_train' do
  @train = "The L Train"
  @stops = MTA[:l_train]
  erb :line
end

get '/plan/g_train' do
  @train="The G Train"
  @stops = MTA[:g_train]
  erb :line
end

get '/plan/n_train' do
  @train= "The N Train"
  @stops = MTA[:g_train]
  erb :line
end

# get '/plan/:line' do
#   "Hello"
#   line = params[:line]
#   stops = MTA[line.to_sym]
#   erb :line
# end

get '/plan' do
  erb :plan

end

get '/'  do
  erb :index
end