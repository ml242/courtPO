class Building

  attr_accessor :address, :has_doorman, :is_walkup, :num_floors, :num_apartments

  def initialize(building_info_hash, apts_array)
    @address = building_info_hash[:address]
    @has_doorman = building_info_hash[:has_doorman]
    @is_walkup = building_info_hash[:is_walkup]
    @num_floors = building_info_hash[:num_floors]
    @num_apartments = building_info_hash[:num_apartments]
    @apartments = apts_array
  end

  def count_renters
    @num_renters
  end

  def count_apartments_available
    @num_apt_available
  end

  def add_apt(building_info_hash, apartment)
    building_info_hash[:apartment] = apartment
    @num_apt_available = @num_apartments - 1
  end

  def get_num_apt_avail
    @num_apt_available
  end
end