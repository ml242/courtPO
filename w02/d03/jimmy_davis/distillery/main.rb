require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'distillery'
require_relative 'beverage'
require_relative 'person'
require_relative 'marketing'

bev1 = Beverage.new("Stella")
p bev1.name

marketing_department = Marketing.new
p marketing_department
p marketing_department.generate_clever_name

# dist1 = Distillery.new
# p dist1
# dist1.brew_beverage
# dist1.brew_beverage
# # bev = dist1.sell_beverage
# # p dist1.beverage_count

# person = Person.new("Jimmy")
# p person
# person.buy_beverage(bev)
# person.drink_beverage
# p person

#FOR HW:

dist = Distillery.new

get '/brew_beverage' do
  dist.brew_beverage
  "<img src='http://i.imgur.com/hmksrEt.jpg'>"
end

get '/drink_beverage' do
  person = Person.new("Jimmy")
  dist.brew_beverage
  person.drink_beverage
  "<img src='http://i.imgur.com/hmksrEt.jpg'>"
end

#need to create stock.erb file
# put this in stock.erb:

# <% @count.times.each do %>
#     <img src="http://i.imgur.com/hmksrEt.jpg">
# <% end %>

get "/beverage_stock" do
  @count = dist.beverage_count
  erb :stock
  count.to_s
end

