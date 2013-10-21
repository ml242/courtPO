Natasha Green
https://www.codeschool.com/users/greennatasha




Answers


Level 1:

FIND I
250 POINTS
Try to find a Zombie where the ID is 1.
t = Zombie.find(3)



CREATE
250 POINTS
Create a new Zombie.

t = Zombie.new  #this will not save it
t = Zombie.create #this will save it

FIND II
250 POINTS
Find the last Zombie in the database, but don't use IDs

t = Zombie.last

QUERY
250 POINTS
Find all Zombies ordered by their names.
Zombie.order(:name)


UPDATE
250 POINTS
Update Zombie 3's graveyard to 'Benny Hills Memorial'

Answer:
t = Tweet.find(3)
t.update_attributes(
:graveyard => 'Benny Hills Memorial')


DESTROY
250 POINTS
Destroy the Zombie with an ID of 3.
t =Tweet.find(2)
t.destroy
Tweet.find(2).destroy
Answer:
Zombie.find(2).destroy


Level 2: Models tast like chicken

CREATE MODEL
250 POINTS
Define a Zombie model.

class Zombie < ActiveRecord::Base
end


VALIDATIONS I
250 POINTS
Add a validation that checks for the presence of a Zombie's name

validates_presence_of :name



VALIDATIONS II
250 POINTS
Add a validation that checks for the uniqueness of a Zombie's name.

validates_uniqueness_of :name



VALIDATIONS III
250 POINTS
Validate both the uniqueness and the presence of a Zombie's name on a single line, using the new validation syntax.

validates :name, :uniqueness => true, => :presence => true



BELONGS TO
250 POINTS
A Weapon belongs to a Zombie. Create that relationship

class Tweet <ActiveRecord::Base
belongs_to :zombie
end

RELATIONSHIP FIND
250 POINTS
Assuming the models and relationships are properly defined, find all the weapons that belong to Zombie 'Ash'.
ash = Zombie.find(1)
ash.weapons


