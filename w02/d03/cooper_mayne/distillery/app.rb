require 'sinatra'
require 'sinatra/reloader'
require_relative 'main'

NAMES = %w{cooper sam tom jim jon tommy millie katy laura sally}

dist = Distillery.new("Cooper's Distillery")
people = []

20.times do
  dist.brew_beverage
end

get '/' do

@dist_name = dist.name
  @beer_count = dist.beverage_count
  @people = people

  erb :index
end

get '/create' do
  name = NAMES.sample
  NAMES.delete name
  p1 = Person.new(name)
  people << p1

  redirect '/'
end

get '/:id/drink' do
  index = params[:id].to_i
  person = people[index]
  beverage = dist.cellar[0]
  person.buy_beverage beverage
  person.drink_beverage beverage

  redirect '/'
end

get '/brew' do
  dist.brew_beverage
  redirect '/'
end
