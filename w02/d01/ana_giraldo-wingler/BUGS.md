BUGS:
- When someone adopts an animal, that animal no longer shows up in the shelter's array of animals
  - display: there are no animals in the #{shelter.name} shelter!
- after "who is adopting ___ the ___", owner list is sloppy
    - change to list of owner names
- after a pet is put up for adoption, it isn't going into the shelter's @pets array.
- here are all their owners and their pets displays: Mary karr owns [#<Pet:0x007faa5d0cd280 @owner=[#<Owner:0x007faa5d0ccc90 @name="Mary karr", @age="56", @pets=[...]>], @name="Bob", @age="45", @gender="M", @species="cat">]
    ==> make prettier

ADD:
- error message when there are no animals that need adopting
- indicate when there are no animals
-