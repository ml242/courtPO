require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'beverage'
require_relative 'distillery'
require_relative 'marketing_dept'
require_relative 'person'

dist = Distillery.new("Mr. Magorium's Moonshine Emporium")

get '/' do
 	@dist = dist
 	erb :index
end

get '/cellar' do
	@dist = dist
	erb :cellar
end

get '/bar_rats' do
	@dist = dist
	erb :bar_rats
end

get '/add_rat' do
	@dist = dist
	erb :add_rat
end

get '/create_rat/:num_rats' do
	@num_rats = params[:num_rats].to_i 
	@dist = dist
	erb :create_rat
end

get '/rat/:rat_name' do
	@rat = dist.rats[params[:rat_name].to_sym]
	erb :rat_profile
end

get '/make_drinks' do
	erb :make_drinks
end

get '/distill/:num_drinks' do
	@num_drinks = params[:num_drinks].to_i
	@dist = dist
	erb :distill
end

get '/buy_drink/:rat_name' do
	@dist = dist
	@rat = dist.rats[params[:rat_name].to_sym]
	erb :buy_drink
end

get '/pay_for_drink/:rat_name/:drink_name' do
	@rat = dist.rats[params[:rat_name].to_sym]
	@drink = dist.cellar[params[:drink_name].to_sym]
	@dist = dist
	dist.sell_beverage( params[:drink_name].to_sym )
	@rat.buy_beverage(@drink)
	erb :pay_for_drink
end

get '/drink_a_drink/:rat_name/:drink_name' do
	@rat = dist.rats[params[:rat_name].to_sym]
	@drink = @rat.drinks[params[:drink_name].to_sym]
	@dist = dist
	@rat.drink_beverage(@drink)
	erb :drink_a_drink
end