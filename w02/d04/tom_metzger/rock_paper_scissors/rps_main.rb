require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'


get '/' do
  @callout = "Hi Mom!!!!"
  erb :index
end






