# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Create Gyms
g1 = Gym.new
g1.name = "Team Voldemort"
g1.save
g2 = Gym.new
g2.name = "Rick James"
g2.save
g3 = Gym.new
g3.name = "Blue Team"
g3.save

#Create Trainers
t1 = Trainer.new
t1.name = "Ash"
t1.gym_id = 1
t1.save
t2 = Trainer.new
t2.name = "Dwight"
t2.gym_id =2
t2.save
t3 = Trainer.new
t3.name = "Brock"
t3.gym_id = 3
t3.save
t4 = Trainer.new
t4.name = "Shogun"
t4.gym_id = 1
t4.save
t5 = Trainer.new
t5.name = "Punisher"
t5.gym_id = 2
t5.save
t6 = Trainer.new
t6.name = "Jazz"
t6.gym_id = 3
t6.save

#Create Pokemon
p1 = Pokemon.new
p1.name = "charzard"
p1.trainer_id = 1
p1.save
p2 = Pokemon.new
p2.name = "mew"
p2.trainer_id = 2
p2.save
p3 = Pokemon.new
p3.name = "squirtle"
p3.trainer_id = 3
p3.save
p4 = Pokemon.new
p4.name = "bulbasaur"
p4.trainer_id = 4
p4.save
p5 = Pokemon.new
p5.name = "triceritops"
p5.trainer_id = 5
p5.save
p6 = Pokemon.new
p6.name = "blastiose"
p6.trainer_id = 6
p6.save
p7 = Pokemon.new
p7.name = "charmander"
p7.trainer_id = 1
p7.save
p8 = Pokemon.new
p8.name = "snorlax"
p8.trainer_id = 2
p8.save
p9 = Pokemon.new
p9.name = "onix"
p9.trainer_id = 3
p9.save
p10 = Pokemon.new
p10.name = "raichu"
p10.trainer_id
p10.save



