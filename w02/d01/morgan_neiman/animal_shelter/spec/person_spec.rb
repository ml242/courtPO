require 'spec_helper'

describe Person do

  before :each do
    @person = Person.new('Beth', 30, 'female', 3)
  end

  describe "#new" do
    it "takes four parameters and returns a Person object" do
      expect(@person).to be_an_instance_of(Person)
    end
  end

  describe ".to_s" do
    it "prints the Person object's attributes in a sentence" do
      expect(@person.to_s).to eql("Beth is a 30 year old female with 3 kids and 0 pets")
    end
  end

  describe ".display_pets" do
    it "prints names of the Person object's pets" do
      tiny = Animal.new("Tiny", 3, "male", "cat")
      franz = Animal.new("Franz", 5, "male", "cat")
      @person.pets[tiny.name.to_sym] = tiny
      @person.pets[franz.name.to_sym] = franz
      expect(@person.display_pets).to match("Tiny is a 3 year old male cat that loves \nFranz is a 5 year old male cat that loves ")
    end
  end

end