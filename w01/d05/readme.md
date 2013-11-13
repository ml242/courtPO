###Week01-Day5


#WORK IN YOUR OWN FOLDER ONLY!

##0. Objective
Get practice writing classes and creating objects with those classes. You will also be creating objects that have other objects inside of them! Woah!

Here are the specifications

##1. Rental App

Create a class for each of the below(IN A SEPARATE FILE FOR EACH CLASS)

|Atrributes of Building Class |Ruby Type|
|:----------|:-----------|
|address|String|
|has_doorman|Boolean|
|is_walkup|Boolean|
|num_floors|Integer|
|apartments|hmmmm|
|count_people|method `def count_renters`|
|count_apartments_available|method `def count_apartments_available`|

|Attributes of Apartment Class|Ruby Type|
|:----------|:-----------|
|sqft|Integer|
|num_bedrooms|Integer|
|num_baths|Integer|
|renters|hmmmmmm|
|is_occupied?|A Method `def is_occupied?`|
|price|Float|


|Attributes of Person Class|Ruby Type|
|:----------|:-----------|
|name|String|
|age|Integer|
|gender|String|
|apartment|hmmmmmm|

## Create Some Objects Now!
- Create 2 Buildings
- Fill those 2 Buildings with some apartments on at least 2 floors in each apartment building (just put a couple apartments on each floor)
- Have a couple people living in each apartment.
- Have a method in the building class that:
	- Calculates the number of tenants in the building
	- The number of filled rooms
	- The number of empty rooms


---

##Non-Required Extra Credit!:
REMEMBER, BUILD THE LEAF, do this stuff AFTER, you have

### Object Stuffs!
- For the Apartment class, if you want to get fancy, you can do an array of arrays (remember though, building the leaf)
	- the outer array represents an array of floors
	- within a given floor, there is an array of room
- Don't make price of an Apartment a fixed attribute but a dynamic method based on the attributes of the apartment
	- ie Squarefootage
	- number of bedrooms
	- number of bathrooms
- Create an apartment to figure out the gender ratio of an apartment.

Remember, though! BUILD THE LEAF, don't do this first!


##### Randomized Buildings
Extra Credit

- Using the [Random](http://www.ruby-doc.org/core-1.9.3/Random.html) library
    - Just do this to get a random number between 1-100
    - r = Random.new
    - r.rand(1..100) # => 50
    - r.rand(1..100) # => 35
- And using the gem [Faker](http://faker.rubyforge.org/)
  - gem install [faker](http://faker.rubyforge.org/)
    - run Faker::Name.name
      - to create a random name
    - run Faker::Internet.email
      - to create a random email
    - if you look at the library
      - you can create a whole bunch of random things
- Populate an arbitrary number of apartment building given the number of apartment buildings, apartments and

###Front-End Bonus:
- Include colors, i.e. using the `rainbow` gem
- Write a show_building method show a little building
- Write a show_apartment method show a little apartment
- Write a show_person method show a little person

####Example:
```ruby
require 'rainbow'
...

class Building
  ...
  def show_building
    puts "--------".color('ff00ff')
    puts "|[]  []|".color('ff0000')
    puts "|[]  []|".color('00ff00')
    puts "|[]  []|".color('ff00ff')
    puts "|  {}  |".color('f0f0f0')
    puts "| _-_  |".color('ffff00')
  end
  ...
end

```

###Back-End Bonus:
- Add an options hash for the Apartment and Building class
- Write methods to help manage the buildings
  - For Example:
    - collect_rent
    - evict_renter


### Extra Extra Credit (for some reason if you're really bored and don't have any life at all)

-How would you refactor your Facebook work in class to use Objects?

---

#WORK IN YOUR OWN FOLDER ONLY!
