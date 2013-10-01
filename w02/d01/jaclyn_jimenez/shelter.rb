class Shelter

  attr_accessor :name

  def initialize(name)
    @name = name
    #@people = []
    #@animals = []
    #@animal_names = []
    #@people_names = []
  end

  #def add_person(person)
  #  @people << person
  #  @people_names << person.name
  #end

  #def add_animal(animal)
  #  @animals << animal
  #  @animal_names << animal.name
  #end

  def list_people
    PEOPLE
  end

  def list_animals_info
    ANIMALS.each_value do |animal|
      ans << animal.animal_info
    end
    ans.join(", ")
  end

  def list_people_info
    PEOPLE.each_value do |person|
      ans << person.person_info
    end
    ans.join(", ")
  end

  def list_people_string
    #@people_names.join ", "
    PEOPLE.keys.to_s
  end

  def list_animals_string
    #@animal_names.join ", "
    ANIMALS.keys.to_s
  end

  def shelter_info
    "Name:  #{@name}
    People:  #{list_people_string}
    Animals:  #{list_animals_string}"
  end
end