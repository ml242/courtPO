require 'pry'

class Building
  attr_accessor :is_walkup, :num_floors

  def initialize(address, floors)
    @num_floors = floors.to_i
    @address = address
    @has_doorman = false
    @apartments = []
    @is_walkup = false
  end

  def floor_num
    @num_floors
  end

  def hire_doorman(person)
    @has_doorman = true
    @doorman = person
    "#{person} has been hired as the doorman!"
  end

  def has_doorman
    if @has_doorman == true
      "This building has a doorman"
    else
      puts "This building does not have a doorman. would you like to hire one? [y/n]"
      answer = gets.chomp.downcase
      if answer != "y"
        "Ok, we will not hire a doorman."
      else
        puts "Who will you hire?"
        person = gets.chomp
        hire_doorman(person)
        self.hire_doorman(person)
      end
    end
  end

  def add_apartment(apartment)
    puts "Add #{apartment} to which floor? Building has #{@num_floors} floors."
    fl = gets.chomp.to_i
    if @num_floors >= fl
      @apartments << apartment
      apartment.set_building_name(@address)
    else
      puts "We do not have that floor in this building. Consider building more floors."
      add_apartment(apartment)
    end
  end

  def list_apartments
    "There are #{@apartments.length} apartments: #{@apartments}"
  end

  def count_apartments_available
    #to be created
  end

  def count_people
    #fix this later
  end

end
