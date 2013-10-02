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

get '/journey' do

	# /journey?start_train=g_train&stop_1=nassau&end_train=l_train&stop_2=bedford
	# {:start_train => "g_train", :stop_1 => "nassau", :end_train => "l_train" :stop_2 => "bedford"}

	start_train = params[:start_train].to_sym
	stop_1 = params[:stop_1].to_sym
	end_train = params[:end_train].to_sym
	stop_2 = params[:stop_2].to_sym

	###################################
	#
	# Need to include mta app logic
	# then just call the method
	#
	###################################

end