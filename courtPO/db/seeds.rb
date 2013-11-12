# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.delete_all
# Case.delete_all
# Solution.delete_all

u1 = User.create(name: "Matt L", email: "mattlucas@gmail.com", twitter: "ml242", password: "password", password_confirmation: "password")
u2 = User.create(name: "Matthew K", email: "matthew.korporaal@gmail.com", twitter: "korp_or", password: "password", password_confirmation: "password")
u3 = User.create(name: "Natasha G", email: "greennatasha@aol.com", twitter: "NatashaGreen25", password: "password", password_confirmation: "password")

c1 = Case.create(title: "Problem with my Roommate", conflict: "My roommate never does her dishes. It's infuriating and I wish she'd take of her own mess. I was thinking that I could resolve this by hiring a maid. I brought it up and she doesn't want to chip in. What now?", expiration: 3)
c2 = Case.create(title: "Can't get along with boss", conflict: "I was penalized at work for being late, when I had called ahead as required to let them know my emergency. Meanwhile, I still got there ontime. This guy really has it out for me. Is there anything I can do to patch things up, because I really don't want to get fired.", expiration: 2)
c3 = Case.create(title: "Should I do homework or go out with my boyfriend?", conflict: "I have a big assignment due tomorrow, but promised my boyfriend I'd go out with him. He got tickets to see the Knicks play the Nets and it's a big deal to him. I want to cancel plans but can I expect him to understand?", expiration: 1)
c4 = Case.create(title: "Israel keeps building on my land", conflict: "This conflict goes back many years. We fight all the time but militarily they have the upper hand. No one ever really tries to make peace, and only the people in each country suffer. However, I feel like I'm suffering more due to limited economic opportunity. Should I go throw rocks at soldiers or try another resolution?", expiration: 1)

c1.user = u1
c2.user = u1
c3.user = u2
c4.user = u3

s1 = Solution.create(opinion: "Shape up or ship out")
s2 = Solution.create(opinion: "Sit them down and give them the option to either, a. cleanup after self, b. pay for cleaning, or c. look for a new place")

s3 = Solution.create(opinion: "Talk to human resources. Tell them the problem you are having and what can be done to fix the situation")
s4 = Solution.create(opinion: "Bring them coffee when you are late, and use that as an excuse!")

s5 = Solution.create(opinion: "Oh, and I forgot to say, my bf wouldn't go see a Ryan Gosling movie with me last weekend...")
s6 = Solution.create(opinion: "Be a good student and do your homework!")
s7 = Solution.create(opinion: "Where section are the seats in?")

s8 = Solution.create(opinion: "Can't we all just get along?")

s1.user = u2
s2.user = u3

s3.user = u3
s4.user = u2

s5.user = u2
s6.user = u3
s7.user = u1

s8.user = u1

c1.solutions << s1 << s2
c2.solutions << s3 << s4
c3.solutions << s5 << s6 << s7
c4.solutions << s8

s1.save
s2.save
s3.save
s4.save
s5.save
s6.save
s7.save
s8.save
c1.save
c2.save
c3.save
c4.save