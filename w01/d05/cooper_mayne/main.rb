require 'faker'
require_relative 'building.rb'
require_relative 'apartment.rb'
require_relative 'person.rb'

def make_town( number_of_building )
  #return an array containing all the buildings....
  town = []
  number_of_building.times do
    #fill city with buildings
    fake_address = Faker::Address::street_address
    building = Building.new(fake_address,[true,false].sample,[true,false].sample, rand(3..10) )
    town.push building

    building.apartments.each_index do |i|
      #fill floor with apartments
      building.floor_capacity[i].times do
        fake_apartment = Apartment.new(rand(500..1000), rand(1..3), rand(1..2))
        building.add_apartment(fake_apartment, i+1)
      end
    end

    building.apartments.flatten.each do |apartment|
      #fill apartments with people
      renters = rand(0..3)
      renters.times do
        #how many people? and what are their names?
        fake_name = Faker::Name::name
        renter = Person.new(fake_name, rand(20..80), ['male','female'].sample)
        apartment.add_renter renter
      end
    end
  end
  town
end

def print_town (town)
  ratio_sum = 0
  town.each do |building|
    ratio_sum += building.m_f_ratio
  end
  town_mf_ration = ratio_sum/town.count
  population = 0
  town.each do |building|
    population += building.count_renters
  end
  puts "\t\tA SHORT DESCRIPTION OF THE TOWN:\n"
  puts "The town has #{population} residents.  There are #{town.count} buildings..."
  puts "The male to female ratio is #{town_mf_ration.round(2)}.\n\n"

  town.each do |building|
    puts "\nBuilding Address is #{building.address}. It's #{building.apartments.count} stories high."
    puts "  There are #{building.apartments.flatten.count} apartments total.  #{building.count_apartments_available} units currently available to rent."
    puts "  There are #{building.count_renters} residents... ration of males to females is #{building.m_f_ratio.round(2)}."
  end
  puts "\n"
  town.each do |building|
    puts '========================================='
    puts "Address: #{building.address}"
    puts '========================================='
    building.apartments.each_with_index do |floor_apts, floor|
      puts "\nFloor #{floor+1}:"
      floor_apts.each do |apt|
        puts "  -Apartment"
        puts "    VACANT" unless apt.is_occupied?
        apt.renters.each do |renter|
          puts "    #{renter.name}"
        end
      end
    end
  end
end

def ask(question)
  puts question
  gets.chomp!.to_i
end

num = ask("how many buildings do you want to make?")
town =  make_town (num)
print_town(town)
