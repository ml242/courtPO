require 'sinatra'
require 'sinatra/reloader' if development?

require 'pry'
require 'pry-nav'

require_relative("beverage")
require_relative("marketing_department")
require_relative("distillery")
require_relative("person")

# bev1 = Beverage.new("Stella")
# p bev1

# marketing_department = MarketingDepartment.new
# p marketing_department
# p marketing_department.generate_clever_name


# # p dist1.beverage_count
# # dist1.sell_beverage
# # p dist1.beverage_count

# bev = dist1.sell_beverage

# person = Person.new("Jonathan")
# p person
# person.buy_beverage(bev)
# p person
# p person

#dist = Dist.new("Jonathan's Distillery")

# Then have a route that displays the number of beer bottle images based on the number of beers in the distillery via the below path.

dist1 = Distillery.new("Matt's Brews")
$people = []
#===================================================
get "/people/create" do
  #That adds a new person to this array.
  $people << Person.new("Jonathan")
  erb :new_drinker
  #And then when you do
end

get "/people/0/drink" do
  if $people.length > 0
    bev = dist1.sell_beverage
    # Give that beverage to the person
  binding.pry
    $people[0].buy_beverage(bev)
    # have that person drink the beer
    @bac = $people[0].drink_beverage
  #Get the 0th user, and then have that person drink. The HTML output of this should be the total amount of beers that they drank (a beer can image for each one or if you got fancy, the image of the particular type of alcohol they drank).
    erb :drank
  #And then the background color should become a darker and darker shade of red based on how many beers that person drank
  else
    return nil
  end
end

get "/people/0" do

#Should render the same as the above except the person does not increase the number of beers they drink.

end
#===================================================
get "/brew_beverage" do
  dist1.brew_beverage
    # For the above distillery that is pointed to by the 'dist' variable, brew a single beverage.
  @name
  erb :brew

    # Render an image of a single beer bottle to represent to newly created beer.
end

#===================================================
get "/drink_beverage" do

    # Create a new person here
  person = Person.new("Jonathan")
    # Take a beverage from the distillery and store it into a variable
  bev = dist1.sell_beverage

    # Give that beverage to the person
  person.buy_beverage(bev)

    # have that person drink the beer
  @bac = person.drink_beverage

    # Render an image of a beer bottle to represent the beer drank
  erb :drank
end

#===================================================
get "/beverage_stock" do
    # Inside of this function, render an .erb template that you need to create inside of a 'views' folder

    # Here you need to create an instance variable '@num_beverages' based on the number of beverages currently in the distillery,

    # This instance variable is accessible in the erb file so that you can do the following (see the code snipped below). This will show a beer bottle for the current number of beers in the file.

  @count = dist1.beverage_count
  erb :stock
end