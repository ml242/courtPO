
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
  end

  def get_num_apt_avail(apartment_info)
    # count how many apartments are not empty and subtract from total
    apartment_occupied_count = 0
    apartment_info.length.times do |info_ind|
      if !apartment_info[info_ind][:tenants].empty?
        apartment_occupied_count += 1
      end
    end
    @num_apt_available = @num_apartments - apartment_occupied_count
  end

  def get_num_apt_occupied(apartment_info)
    # count how many apartments are empty and subtract from total
    apartment_empty = 0
    apartment_info.length.times do |info_ind|
      if apartment_info[info_ind][:tenants].empty?
        apartment_empty += 1
      end
    end
    @num_apt_available = @num_apartments - apartment_empty
  end

  def show_building
    apts_per_floor = @num_apartments / @num_floors
    # make roof
    print "--".color('ff00ff')
    apts_per_floor.times do
        print "----".color('ff00ff')
    end
    puts "--".color('ff00ff')
    @num_floors.times do
      print " |".color("ff00ff")
      apts_per_floor.times do
        print " [] ".color("00ff00")
      end
      puts "| ".color("ff00ff")
    end
    # make entrance
    print " |".color("ff00ff")
    apts_per_floor.times do
        print "____".color('f0c00c')
    end
    puts "|".color("ff00ff")
  end
end