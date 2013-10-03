require 'faker'
require 'pry'

class Animal
  attr_accessor :name, :age, :gender, :species, :toys, :shelter
  def initialize(name,age,gender,species)
    @name=name
    @age=age
    @gender=gender
    @species=species
    @toys=[]
    @shelter = nil
  end

  def adoptable?
    true
  end
end

class Person
  attr_accessor :name, :children, :age, :pets
  def initialize(name,age)
    @name=name
    @age=age
    @children=[]
    @pets=[]
  end

  def adopt_animal (animal)
    if animal.adoptable?
      animal.shelter.remove_animal(animal)
      animal.shelter = nil
      @pets << animal
    else
      puts "Animal is not up for adoption"
    end
  end
end

class Shelter
  attr_accessor :people, :animals, :adoption_list
  def initialize
    @adoption_list = []
    @people = []
    @animals = []
  end

  def add_person person
    @people << person
  end

  def remove_person person
    @people.delete person
  end

  def add_animal (animal)
    animal.shelter = self
    @animals << animal
  end

  def remove_animal (animal)
    @adoption_list.delete(animal) if @adoption_list.include?(animal)
    @animals.delete animal
  end

  def put_up_for_adoption (animal)
    @adoption_list << animal
  end
end

def fill_up_shelter
  species = %w{Affenpinscher Aidi Airedale Terrier Akbash Akita Collie Sheltie}
  shelter = Shelter.new
  rand(5..10).times do
    r_species = species.sample
    r_name = Faker::Name::first_name
    r_age = rand(1..8)
    r_gender = ['f','m'].sample
    r_animal = Animal.new(r_name, r_age, r_gender, r_species)
    shelter.add_animal(r_animal)

    rand(0..1).times do
      shelter.put_up_for_adoption r_animal
    end
  end
  rand(4..8).times do
    r_name = Faker::Name::name
    r_age = rand(20..80)
    shelter.add_person Person.new(r_name,r_age)
  end
  shelter
end

shelter= fill_up_shelter
binding.pry

