require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'distillery'
require_relative 'marketing'


# b1 = Beverages.new("b")
# p b1
# p b1.bal_level

dist = Distillery.new
5.times do dist.brew_beverage() end
# p1=People.new("he")
# p p1
# @bev = dist.sell_beverage
# p @bev
# # p @bev.bal_level
# @beer_buy= p1.buy_beverage(@bev)
# @beer_drank = p1.drink_beverage(@beer_buy)
# @beers = @p1.drink_beverage(bev)
# p @beers
# bev1 = dist.sell_beverage
# p dist.cellar


# # p dist

 get '/beverage_stock' do
   @count = dist.count_beverage()
   erb :stock
 end

get "/brew_beverage" do
  @new_bev = dist.brew_beverage
  erb :distilled_beers
end


get '/drink_beverage' do
  @p1 = People.new("Amy")
  @beverage_taken = dist.sell_beverage
  @beer_buy = @p1.buy_beverage(@beverage_taken)
  @beers_drank = @p1.drink_beverage(@beer_buy)
  erb :beers_for_drinking
end