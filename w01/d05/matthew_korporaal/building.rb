class Building

  attr_accessor  :buildingID, :address, :has_doorman, :is_walkup, :num_floors, :num_apartments, :apt_array

  def initialize(building_info_hash)
    @buildingID = building_info_hash[:buildingID]
    @address = building_info_hash[:address]
    @has_doorman = building_info_hash[:has_doorman]
    @is_walkup = building_info_hash[:is_walkup]
    @num_floors = building_info_hash[:num_floors]
    @num_apartments = building_info_hash[:num_apartments]
    @apartments = []
    @num_renters = 0
  end

  def count_renters
    @num_renters
  end

  def count_apartments_available
    @num_apt_available
  end

  def add_apts(building_info_hash, apartment_info_array)
    building_info_hash[:apartments] = apartment_info_array
    #building_info_hash
  end

  def get_num_apt_avail(building_info_hash)
    @num_apt_available = building_info_hash[:apartments]
  end


end