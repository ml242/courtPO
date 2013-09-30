load './person.rb'
load './apartment.rb'
load './building.rb'

require 'Faker'

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
  Building.new(Faker::Address.street_address, r.rand(2) == 1, r.rand(2) == 1)
end

def populate_rand_bldgs(num_bldgs, num_apts)
  r = Random.new
  bldgs = Hash.new { |x,y| x[y] = [] }
  num_bldgs.times do
    bldg = gen_rand_bldg
    num_apts.times do
      apt = gen_rand_apt
      bldg.add_apartment(r.rand(1..50), r.rand(1..20), apt)
      person = gen_rand_person
      apt.add_renter(person)
    end
    bldgs[bldg.address] = bldg
  end
  bldgs
end

nyc_uws = populate_rand_bldgs(30, 40)