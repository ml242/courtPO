require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'train_lines'

get '/plan' do
	unordered_list = '<ul>'
	MTA.each do |line, stops| unordered_list += "<li>#{line}</li>" end
	unordered_list += '</ul>'
end