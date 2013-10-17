# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Gym.create(name: 'Water')
Gym.create(name: 'Rock')
Trainer.create(name: 'Misty',gym_id:1)
Trainer.create(name: 'Rocky', gym_id:2)
Trainer.create(name: 'Superman', gym_id:1)
Pokemon.create(name: 'Squirtle', trainer_id:1)
Pokemon.create(name: 'Pikachu', trainer_id:3)
Pokemon.create(name: 'Bulbasaur', trainer_id:1)
Pokemon.create(name: 'Charizard', trainer_id:2)
