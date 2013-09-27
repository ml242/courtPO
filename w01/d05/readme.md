###Week01-Day4


#WORK IN YOUR OWN FOLDER ONLY!

##1. Rental App
- "Owners of buildings can rent apartments to potential tenants"
- What types of objects might you have in an app that manages rentals?
- Write a class for, at least, each following
  - Building
  - Apartment
  - Person
- Write initialize methods for each object
- Write to_s methods for each object

|Building - attribute|type|
|:----------|:-----------|
|address|string|
|style|string|
|has_doorman|boolean|
|is_walkup|boolean|
|num_floors|integer|
|apartments|array of apartment objects|

|Apartment - attribute|type|
|:----------|:-----------|
|price|decimal|
|is_occupied|boolean|
|sqft|integer|
|num_beds|integer|
|num_baths|integer|
|renters|array of person objects|

|Person (assume tenants or prospective tenants)|type|
|:----------|:-----------|
|name|string|
|age|integer|
|gender|string|
|apartment|apartment object|



---

##Non-Required:

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

---

#WORK IN YOUR OWN FOLDER ONLY!