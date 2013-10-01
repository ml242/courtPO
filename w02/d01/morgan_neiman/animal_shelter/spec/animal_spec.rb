require 'spec_helper'

describe Animal do

  before :each do
    @animal = Animal.new("Tiny", 3, "male", "cat")
    @animal.toys << "mice" << "string"
  end

  describe "#new" do
    it "takes four parameters and returns an Animal object" do
      expect(@animal).to be_an_instance_of(Animal)
    end
  end

  describe ".to_s" do
    it "prints the Animal object's attributes in a sentence" do
      expect(@animal.to_s).to match("Tiny is a 3 year old male cat that loves mice, string")
    end
  end

end