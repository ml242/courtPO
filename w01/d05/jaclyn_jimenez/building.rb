require 'pry'

class Building
  attr_accessor :is_walkup, :num_floors

  def initialize(address, floors)
    @num_floors = floors.to_i
    @address = address
    @doorman = false
    @apartments = []
  end

  def floor_num
    @num_floors
  end

  def hire_doorman(person)
    @doorman = true
    "#{person} has been hired as the doorman!"
  end

  def has_doorman
    if @doorman == true
      "This building has a doorman"
    else
      puts "This building does not have a doorman. would you like to hire one?"
      answer = gets.chomp.downcase
      if
        answer = "yes" || answer = "y"
        puts "Who will you hire?"
        person = gets.chomp
        self.hire_doorman(person)
      else
        "Ok, we will not hire a doorman."
      end
    end
  end

  def add_apartment(apartment)
    puts "Add #{apartment} to which floor? Building has #{@num_floors} floors."
    fl = gets.chomp.to_i
    if @num_floors >= fl
      @apartments << apartment
    else
      puts "We do not have that floor in this building. Consider building more floors."
      add_apartment(apartment)
    end
  end

  def list_apartments
    "There are #{@apartments.length} apartments: #{@apartments}"
  end

  def list_renters
    "There are #{@occupants.length} in this building"
  end

end
