
bldg_array = [bldg2_hash = {
  :address => "400 W 77th St NY NY 10018",
  :is_doorman => true,
  :is_walkup => false,
  :num_floors => 3,
  :num_apartments => 3
}
apt1 = {
:aptID => 010101,
:sqft => 300,
:num_bed => 2,
:num_bath => 1.5,
:price => 2200
}
apt2 = {
  :aptID => 010102,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}
apt3 = {
  :aptID => 010203,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}
apt4 = {
  :aptID => 010204,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}
apt5 = {
  :aptID => 020101,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}
apt6 = {
  :aptID => 020202,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}
apt7 = {
  :aptID => 020303,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}]

File.open('bldg_db.json', 'w'){ |file| JSON.dump( bldg_array, file) }
