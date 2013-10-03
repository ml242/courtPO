require 'sinatra'
require 'sinatra/reloader' if development?
# require 'pry'
# require 'pry-nav'
require_relative("beverage")
require_relative("marketing_department")
require_relative("distillery")
require_relative("person")

marketing_department = MarketingDepartment.new
p marketing_department
p marketing_department.generate_clever_name
dist1 = Distillery.new
p dist1
dist1.brew_beverage
dist1.brew_beverage
dist1.brew_beverage
dist1.brew_beverage
dist1.brew_beverage
dist1.brew_beverage
p dist1.beverage_count

dist1.sell_beverage
p dist1.beverage_count

bev = dist1.sell_beverage
bev1 = dist1.sell_beverage
bev2 = dist1.sell_beverage
bev3 = dist1.sell_beverage
bev4 = dist1.sell_beverage
bev5 = dist1.sell_beverage
bev6 = dist1.sell_beverage
bev7 = dist1.sell_beverage
bev8 = dist1.sell_beverage
bev9 = dist1.sell_beverage
bev10 = dist1.sell_beverage

person = Person.new("Jonathan")
p person
person.buy_beverage(bev)
person.buy_beverage(bev1)
person.buy_beverage(bev2)
person.buy_beverage(bev3)
person.buy_beverage(bev4)
person.buy_beverage(bev5)
person.buy_beverage(bev6)
person.buy_beverage(bev7)
person.buy_beverage(bev8)
person.buy_beverage(bev9)
person.buy_beverage(bev10)


get "/beverage_stock" do
  @count = dist1.beverage_count
  erb :stock
end

get "/buy_beverage" do
    @drunk = person.buy_beverage(bev)
    erb :drinks
end

