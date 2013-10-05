require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require '/Users/vanderhoop/ga_WDI/hw/w02/d03/travis_vanderhoop/distillery/beverage.rb'
require  '/Users/vanderhoop/ga_WDI/hw/w02/d03/travis_vanderhoop/distillery/mktgDpt.rb'
require  '/Users/vanderhoop/ga_WDI/hw/w02/d03/travis_vanderhoop/distillery/distillery.rb'
require  '/Users/vanderhoop/ga_WDI/hw/w02/d03/travis_vanderhoop/distillery/person.rb'

dist1= Distillery.new("The Count of Brooklyn")
# bev1 = Beverage.new
# bev2 = Beverage.new
# p1 = Person.new("Jack White")
# p2 = Person.new("Beck Hanson")

# dist1.brew_beverage
# dist1.brew_beverage
# dist1.brew_beverage
# dist1.brew_beverage
# dist1.brew_beverage
# dist1.brew_beverage
# dist1.brew_beverage
# dist1.brew_beverage

# p1.buy_beverage(dist1)

get "/brew_beverage" do

    dist1.brew_beverage
    # For the above distillery that is pointed to by the 'dist' variable, brew a single beverage.

    # Render an image of a single beer bottle to represent to newly created beer.
    erb :single_beer
end

#===================================================
get "/drink_beverage" do

    p1 = Person.new('Travis')
    p1.buy_beverage(dist1)
    p1.drink_beverage
    erb :empty_bottle
    # Render an image of a beer bottle to represent the beer drank

end

#===================================================
get "/beverage_stock" do



    # Inside of this function, render an .erb template that you need to create inside of a 'views' folder

    @num_beverages = dist1.cellar.size.to_i# Here you need to create an instance variable '@num_beverages' based on the number of beverages currently in the distillery,

    # This instance variable is accessible in the erb file so that you can do the following (see the code snipped below). This will show a beer bottle for the current number of beers in the file.
    erb :bev_stock

end


# binding.pry
