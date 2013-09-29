class Apartment
  attr_accessor :sqft, :num_bedroom, :num_bath, :price, :aptID, :tenants

  def initialize(apartment_info_hash)
    @aptID = apartment_info_hash[:aptID]
    @sqft = apartment_info_hash[:sqft]
    @num_bedroom = apartment_info_hash[:num_bed]
    @num_bath = apartment_info_hash[:num_bath]
    @price = apartment_info_hash[:price]
    @tenants = []
  end

  def add_tenants(renters_a)
    @tenants = renters_a.pop(renters_a.length)
    @tenants.flatten!
  end


  def is_occupied?
    @tenants? true : false
    #!@tenants.empty?
  end
end
