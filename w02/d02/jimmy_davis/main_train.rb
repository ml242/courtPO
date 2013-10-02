require 'sinatra'
require 'sinatra/reloader' if development?

# Your ruby code will need to include a constant that points to a hash called MTA
# MTA = { :l_train => ['bedford', '1st ave'], :g_train => ['greenpoint', 'nassau'], :n_train => ['canal', '8th'], }
# the keys are train lines. the values are arrays of station name strings

get '/' do

end

MTA = {
  :l_train => ['bedford', '1st ave'],
  :g_train => ['greenpoint', 'nassau'],
  :n_train => ['canal', '8th'], }