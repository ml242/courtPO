require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'train_lines'

get '/plan' do
	unordered_list = '<ul>'
	MTA.each do |line, stops|
		unordered_list += "<li><a href=\"/plan/#{line}\">#{line}</a></li>"
	end
	unordered_list += '</ul>'
end

get '/plan/:line' do
	line = params[:line].to_sym
	unordered_list = '<ul>'
	MTA[line].each do |stop|
		unordered_list += "<li>#{stop}</li>"
	end
	unordered_list += '</ul>'
end