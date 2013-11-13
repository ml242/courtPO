require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

require_relative 'distillery'
require_relative 'beverage'
require_relative 'marketing_department'
require_relative 'person'

dist1 = Distillery.new("Quin Cocktail's")
p1 = Person.new("Quin")
dist1.brew_beverage
dist1.brew_beverage
dist1.brew_beverage
# bev = dist.sell_beverage(bev)
# p1.buy_beverage(bev)
# p1.drink_beverage
# binding.pry


get '/brew_beverage' do


end

get '/drink_beverage' do

end

get '/beverage_stock' do
  @count = dist1.beverage_count
  erb :stock
end