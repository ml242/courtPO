require 'sinatra'
require 'sinatra/reloader' if development?

require_relative("beverage")
require_relative("marketing_department")
require_relative("distillery")
require_relative("person")

# bev1 = Beverage.new("Stella")
# p bev1

# marketing_department = MarketingDepartment.new
# p marketing_department
# p marketing_department.generate_clever_name

dist1 = Distillery.new
p dist1
dist1.brew_beverage
dist1.brew_beverage
dist1.brew_beverage
dist1.brew_beverage
dist1.brew_beverage
dist1.brew_beverage
# # p dist1.beverage_count
# # dist1.sell_beverage
# # p dist1.beverage_count

bev = dist1.sell_beverage

person = Person.new("Jonathan")
p person
person.buy_beverage(bev)
p person
person.drink_beverage
p person

get "/beverage_stock" do
  @count = dist1.beverage_count
  erb :stock
end

get "/drink_beverage" do
    @drunk = person.drink_beverage
    erb :drinks
end

