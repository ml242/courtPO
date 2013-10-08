require 'pry'
require_relative 'tenant'
require_relative 'building2'
require_relative 'apartment2'

b1 = Building.new('239 Frost', false, true, 4)
  #b1.apartments => []
a1 = Apartment.new

t1 = Tenant.new('Jon', 66, 'm')
t2 = Tenant.new('Jeff', 66, 'm')
t3 = Tenant.new('Jim', 66, 'f')

b1.apartments << a1

a1.move_in(t1)
a1.move_in(t2)

binding.pry