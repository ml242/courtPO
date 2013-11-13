

require 'sinatra'
require 'sinatra' if development?

get '/' do
  erb :index
end

get '/dummy' do
  puts params #puts to terminal
  @result = params[:query]
  @result2 = params[:query2]
  erb :dummy
end

get '/dummy2' do
  puts params #puts to terminal
  @result2 = params[:query2]
  erb :dummy2
end

get '/answer' do

  erb :answer
end