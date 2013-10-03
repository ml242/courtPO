require 'pry'
require 'pry-nav'
require 'pry-remote'

require 'faker'

require 'sinatra'
require 'sinatra/reloader' if development?

BAL_INFO = {
  :tequila => 0.10,
  :beer => 0.45,
  :whisky => 0.5,
  :rum => 0.4,
  :vodka => 0.55,
  :cider => 0.3
}

PEOPLE = []

require_relative 'distillery'
require_relative 'marketing_department'
require_relative 'beverage'
require_relative 'person'

dist = Distillery.new("LA Distillery")

get '/' do
  @num_beverages = dist.beverage_count
  @num_people = PEOPLE.length
  @people_names_array = []
  PEOPLE.each do |person|
    @people_names_array << person.name
  end
  erb :beverage_count
end

get '/brew_beverage' do
  dist.brew_beverage(:beer)
  erb :new_beverage
end

get '/people/create' do
  new_person = Person.new(Faker::Name.name)
  PEOPLE << new_person
  @new_person_name = new_person.name
  erb :person_created
end

get '/people/:index/drink' do
  unless dist.beverage_count == 0
    index = params[:index].to_i
    p1 = PEOPLE[index]
    @person_name = p1.name
    sold = dist.sell_beverage
    alcohol_amount = BAL_INFO.fetch(:beer)

    p1.buy_beverage(sold)
    p1.drink_beverage

    @bal = p1.check_drunkness
    erb :drink_beverage
  else
    "No more drinks. Try making some more. <a href='/'>Go Back</a>"
  end
end



