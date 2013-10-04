require_relative 'distillery.rb'
require_relative 'beverage.rb'
require_relative 'marketing_dept.rb'
require_relative 'person.rb'
require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

dist = Distillery.new("Enoch's Epics")
p1 = Person.new("Ian")
get "/beverage_stock" do
  @num_beverages = dist.beverage_count
  @text = dist.cellar_list
  @red_v = 255
  erb :breverage_stock
end
get "/brew_beverage" do
  @num_beverages = 1
  b1 = dist.brew
  @text = b1.name
  @red_v = 255
  erb :breverage_stock
end
get "/drink_beverage" do
  @num_beverages = 1 + p1.blood_alcohol / 0.02

  if dist.cellar == []
    @text = "You need to brew more beer!"
  else
    p1.buy(dist.cellar.first)
    @text = p1.drink(dist.cellar.first)
  end
  @red_v = p1.red_v
  erb :breverage_stock
end

# b2 = dist.brew
# b3 = dist.brew
# b4 = dist.brew
# b5 = dist.brew

# p1.buy(b2)
# p1.buy(b3)
# p1.buy(b4)
# p1.buy(b5)