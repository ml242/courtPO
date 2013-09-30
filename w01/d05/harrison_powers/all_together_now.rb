load './person.rb'
load './apartment.rb'
load './building.rb'

require 'Faker'
require 'rainbow'
require 'json'
require 'pp'
require 'pry'

MAIN_MENU = "
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Welcome to Ruby SimCity

To generate buildings, press:
> 1

To view real estate, press:
> 2

To save and quit, press:
> 0

"

GENERATE_MENU_1 = "
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Time to build stuff.

How many buildings would you like
to generate?
> type a number and hit enter

To go back, press:
> 0

"

GENERATE_MENU_2 = "

How many apartments would you like
to generate per building?
> type a number and hit enter

"

VIEW_MENU = "
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Lets look at the hard work of
this fine machine.

To view a list of all
your buildings, press:
> 1

To view a map of the city, press:
> 2

To go back, press:
> 0

"

def mf
  ["male", "female"].sample
end

def gen_rand_person
  r = Random.new
  Person.new(Faker::Name.name, r.rand(1..100), mf, Faker::Internet.email)
end

def gen_rand_apt
  r = Random.new
  Apartment.new(r.rand(500..2000), r.rand(1..4), r.rand(1..3))
end

def gen_rand_bldg
  r = Random.new
  Building.new(Faker::Address.street_address, r.rand(2) == 1, r.rand(2) == 1, r.rand(1..20))
end

def populate_rand_bldgs(num_bldgs, num_apts)
  r = Random.new
  bldgs = Hash.new { |x,y| x[y] = [] }
  num_bldgs.times do
    bldg = gen_rand_bldg
    apts_per_floor = num_apts / bldg.num_floors
    apt_num_gen = 0
    floor_num_gen = 1
    num_apts.times do
      apt = gen_rand_apt
      apt_num_gen += 1
      if apt_num_gen < apts_per_floor
        bldg.add_apartment(floor_num_gen, "#{floor_num_gen}-#{apt_num_gen}", apt)
      else
        bldg.add_apartment(floor_num_gen, "#{floor_num_gen}-#{apt_num_gen}", apt)
        apt_num_gen = 0
        floor_num_gen += 1
      end
      person = gen_rand_person
      apt.add_renter(person)
    end
    bldgs[bldg.address] = bldg
  end
  bldgs
end

def list_city(city)
  pp city.keys
end

def map_city(city)
 city.values.each do |x| x.show_building end
end

simcity = {}

while true
  puts MAIN_MENU
  user_input = gets.chomp
  break if user_input == "0"
  if user_input == "1"
    puts GENERATE_MENU_1
    user_input = gets.chomp
    break if user_input == "0"
    puts GENERATE_MENU_2
    user_input2 = gets.chomp
    simcity = populate_rand_bldgs(user_input.to_i, user_input2.to_i)
    binding.pry
  elsif user_input == "2"
    puts VIEW_MENU
    user_input = gets.chomp
    break if user_input == "0"
    puts list_city(simcity) if user_input == "1"
    puts map_city(simcity) if user_input == "2"
  end
end