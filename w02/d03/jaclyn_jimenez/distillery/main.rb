require 'sinatra'
require 'sinatra/reloader' if development?


require_relative 'marketingdepartment'
require_relative 'distillery'
require_relative 'beverage'
require_relative 'person'

  d1 = Distillery.new("Big Brew")
  d1.brew_beverage
  d1.brew_beverage
  d1.brew_beverage
  d1.brew_beverage

get "/brew_beverage" do
  erb :brew
end

p1 = Person.new("Lucy")
  bought = d1.cellar.first
  p1.buy_beverage(bought)
  new_bev = p1.liquor_cabinet.first
  p1.drink_beverage(new_bev)

get "/drink_beverage" do
  erb :drink_it
end

get "/beverage_stock" do
  @num_beverages = d1.beverage_count
  erb :stock
end


