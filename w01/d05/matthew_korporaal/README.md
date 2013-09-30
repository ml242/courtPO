# Apartments



Generates # buildings based on user input.

Variable that can be set in main and default settings:
######max_num_floors = 4
######max_apts_per_floor = 4
######max_tenants_per_apt = 4

These are maximums, not necessarily what the buildings will look like.

Tenant occupancy is random boolean, so it will be ~50% on average


|Files: |Description
|:----------|:-----------|
| README.md | |
| building.rb | Building class|
| apartment.rb | Apartment class and methods|
| person.rb | Person class and methods |

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