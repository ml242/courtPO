require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'
require_relative 'programmer'

after do
  ActiveRecord::Base.connection.close
end

