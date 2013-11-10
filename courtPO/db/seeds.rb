# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create[name: "Matt L", email: "mattlucas@gmail.com", twitter: "@ml242"]
u2 = User.create[name: "Matthew K", email: "matthew.korporaal@gmail.com", twitter: "@korp_or"]
u3 = User.create[name: "Natasha G", email: "greennatasha@aol.com", twitter: "@NatashaGreen25"]

# Case.create[title: "Problem with my Roommate", conflict: "My roommate never does her dishes. It's infuriating and I wish she'd take of her own mess. I was thinking that I could resolve this by hiring a maid. I brought it up and she doesn't want to chip in. What now?", user_id: 1,]
# Case.create[title: "Can't get along with boss", conflict: "I was penalized at work for being late, when I had called ahead as required to let them know my emergency. Meanwhile, I still got there ontime. This guy really has it out for me. Is there anything I can do to patch things up, because I really don't want to get fired."]
# Case.create[title: "Should I do homework or go out with my boyfriend?", conflict: "I have a big assignment due tomorrow, but promised my boyfriend I'd go out with him. He got tickets to see the Knicks play the Nets and it's a big deal to him. I want to cancel plans but can I expect him to understand?"]
# Case.create[title: "Israel keeps building on my land", conflict: "This conflict goes back many years. We fight all the time but militarily they have the upper hand. No one ever really tries to make peace, and only the people in each country suffer. However, I feel like I'm suffering more due to limited economic opportunity. Should I go throw rocks at soldiers or try another resolution?"]


