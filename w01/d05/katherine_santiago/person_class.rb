# require 'pry'
# require_relative 'apartment_class.rb'
# require_relative 'building_class.rb'""

class Person
    attr_accessor :name, :age, :gender, :apt_num, :building_address

    def initialize
       puts "Yay, I'm alive!"
    end

# person view apartment
# may want to use the .each method
# if the first apt is not liked, then go to the second apart available, etc.
    def view_apartment
# I'm not sure that this works -- I need a better explanation of how to do the each method
        @vacant_apartments.each do |x|
            for x
            puts "Do you like the apartment? y/n"
            @like_apartment = gets.chomp
            if @like_apartment == "y"
                puts "Wow! What a great space."
            else
                puts "I'd like to see another one please."
            end
    end

# if apartment is liked, then renter can rent the apartment and sign the lease
# if the lease is signed, the the person is added to renters names

    def rent_apartment
        puts "Will you sign the lease? y/n"
        @sign_lease = gets.chomp
        while @sign_lease == y
            @renters_names << @name
            @rented << @apt_num
            puts "The lease was signed by: #{renter_name}"
                # remove the apartment from the available apartments
            @apartments_available.delete.(@apt_num)

        end
    end
# if there is a roommate, then the roommate's name is added to the renters names
    def get_roommates
        puts "Do you have a roommate?"
        @roommate = gets.chomp
        @renters_names << @roommate
    end
end

p1 = Person.new
p1.name = "Anthony Weiner"
p1.age = 49
p1.gender = m
p1.roommate = "Huma Abedin"
p1.view_apartment(b2.vacant_apartments)
p1.rent_apartment = 40

p2 = Person.new
p2.name = "Miley Cyrus"
p2.age = 20
p2.gender = f
p2.roommate = nil
p2.view_apartment(b1.vacant_apartments)






