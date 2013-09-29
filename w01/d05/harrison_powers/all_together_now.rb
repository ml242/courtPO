load './person.rb'
load './apartment.rb'
load './building.rb'

dude001 = Person.new("Dude 1", 25, "male")
dude002 = Person.new("Dude 2", 26, "male")
dude003 = Person.new("Dude 3", 27, "male")
dude004 = Person.new("Dude 4", 28, "male")
dude005 = Person.new("Dude 5", 29, "male")
dude006 = Person.new("Dude 6", 30, "male")
dude007 = Person.new("Dude 7", 31, "male")
dude008 = Person.new("Dude 8", 32, "male")
dude009 = Person.new("Dude 9", 33, "male")
dude010 = Person.new("Dude 10", 34, "male")
dude011 = Person.new("Dude 11", 35, "male")
dude012 = Person.new("Dude 12", 36, "male")


apt_101_555_5th_ave = Apartment.new(400, 1, 1, 5000)
apt_101_555_5th_ave.add_renter(dude001)

apt_102_555_5th_ave = Apartment.new(500, 1, 1, 5500)
apt_102_555_5th_ave.add_renter(dude002)

apt_103_555_5th_ave = Apartment.new(600, 1, 1, 6000)
apt_103_555_5th_ave.add_renter(dude003)

apt_201_555_5th_ave = Apartment.new(400, 1, 1, 5000)
apt_201_555_5th_ave.add_renter(dude004)

apt_202_555_5th_ave = Apartment.new(500, 1, 1, 5500)
apt_202_555_5th_ave.add_renter(dude005)

apt_203_555_5th_ave = Apartment.new(600, 1, 1, 6000)
apt_203_555_5th_ave.add_renter(dude006)


apt_101_400_10th_ave = Apartment.new(400, 1, 1, 5000)
apt_101_400_10th_ave.add_renter(dude007)

apt_102_400_10th_ave = Apartment.new(500, 1, 1, 5500)
apt_102_400_10th_ave.add_renter(dude008)

apt_103_400_10th_ave = Apartment.new(600, 1, 1, 6000)
apt_103_400_10th_ave.add_renter(dude009)

apt_201_400_10th_ave = Apartment.new(400, 1, 1, 5000)
apt_201_400_10th_ave.add_renter(dude010)

apt_202_400_10th_ave = Apartment.new(500, 1, 1, 5500)
apt_202_400_10th_ave.add_renter(dude011)

apt_203_400_10th_ave = Apartment.new(600, 1, 1, 6000)
apt_203_400_10th_ave.add_renter(dude012)

bldg_555_5th_ave = Building.new("555 5th Ave", true, false, 5)
bldg_400_10th_ave = Building.new("400 10th Ave", false, true, 5)

bldg_555_5th_ave.add_apartment(1, apt_101_555_5th_ave)
bldg_555_5th_ave.add_apartment(1, apt_102_555_5th_ave)
bldg_555_5th_ave.add_apartment(1, apt_103_555_5th_ave)
bldg_555_5th_ave.add_apartment(2, apt_201_555_5th_ave)
bldg_555_5th_ave.add_apartment(2, apt_202_555_5th_ave)
bldg_555_5th_ave.add_apartment(2, apt_203_555_5th_ave)

bldg_400_10th_ave.add_apartment(1, apt_101_400_10th_ave)
bldg_400_10th_ave.add_apartment(1, apt_102_400_10th_ave)
bldg_400_10th_ave.add_apartment(1, apt_103_400_10th_ave)
bldg_400_10th_ave.add_apartment(2, apt_201_400_10th_ave)
bldg_400_10th_ave.add_apartment(2, apt_202_400_10th_ave)
bldg_400_10th_ave.add_apartment(2, apt_203_400_10th_ave)