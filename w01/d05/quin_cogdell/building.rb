# num floors for building should be directly related to the keys in the apartments hash
#currently these are not connected.
#should floors just be the count of the hash keys?

class Building
  attr_accessor :address, :has_doorman, :is_walkup, :num_floors, :apartments

  def initialize
    @apartments = {}
  end

# should  refactor this because it is reptative with count_apartments_available
  def count_renters
    renters = 0
    @apartments.each do |floor, apartments|
      @apartments[floor].each do |apartment|
        #binding.pry
        renters += apartment.renters.count
      end
    end
    renters     # why do i have to return this here?
  end

def count_apartments_available
  available_apartments = 0
  @apartments.each do |floor, apartments|
    @apartments[floor].each do |apartment|
      #binding.pry
      if apartment.is_occupied? != false
        available_apartments += 1
      end
    end
  end
  available_apartments  #why does this have to be returned here?
end

# added a method to count the total apartments in the building
# was practice for looping through hashes
  def count_total_apartments
    total_apartments = 0
    @apartments.each { |floor, apartments| total_apartments += @apartments[floor].count }
    total_apartments #why do i have to include this to get it to return total apartments as a number?
  end
end


#a = b2.apartments[:floor_two].each {|apartment| apartment.is_occupied? }

