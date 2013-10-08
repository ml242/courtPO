class Building
  attr_accessor :name, :apartments
  # def apartments
  #   @apartments
  # end
  # def apartments=(apt)
  #   @apartments = apt
  # end

  def initialize(address, has_doorman, is_walkup, num_floors)
    @address = address
    @has_doorman - has_doorman
    @is_walkup = is_walkup
    @apartments = []
    @num_floors = num_floors

  end

  def count_people
    #set a counter
    total_renters = 0
    #loop through the apt array
    @apartments.each do |apartment|
    #count the people in each array
      total_renters = total_renters + apartment.tenants.count
      #this is the loop
      end
      total_renters
    #return the total renters
    end

  def count_apartments_available

    #set a counter
    #loop through the apt array
    @apartments.each do |apt|
    #count the number of apartments that aren't occupied
     #unless apt.occupied?
     total_available += 1 if !apt.occupied?
     end
     total_available

  def inquiry_string
    "There are #{apartment_count} apartments available."
  end

  def to_s
    "#{name} is a cozy building with #{inquiry_string}
  end
      #return the total
end