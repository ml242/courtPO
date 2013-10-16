## Rails For Zombies (Ch 1 & Ch 2)
Complete chapters 1 & 2 of Rails for Zombies by [Code School](http://codeschool.com).
####Make sure that you're signed in, so you get the badges!

* When you're logged into Code School, go to "My Account" and copy the link to your "Report Card".
* Edit the readme.md inside of **YOUR PERSONAL FOLDER**, and add a new line with your codeschool profile URL.

example

```
Name: Alicia Lauerman
codeschool: https://www.codeschool.com/users/allydevour
```


# Make A Crud Application in Rails

You are building a crud app. You should be able to Create, Read, Update and Destroy Gyms, Trainers, and Pokemon, or Countries, States, and Senators. [Checkout the Rails Routing guide](http://guides.rubyonrails.org/routing.html) for figuring out the various routes that you should have.

Modeling Hint:

```
Gym
- name

Trainer
- name
- gym_id

Pokemon
- name
- trainer_id
```

```
Country
- name

State
- name
- country_id

Senator
- name
- state_id
```

Gyms have Trainers, and Trainers have Pokemon.
Trainers belong to a Gym and Pokemon belong to Trainers.

Countries have States, and States have Senators.
States abelong to Countries and Senators belong to States.

# Open Ended Assignment

But This is an open ended assignment, so after you have the given CRUD functionality, feel free to go a little bit wild (wildness is extra credit : ) However, before you do this, sktech out exactly what you want to do. GROW YOUR LEAF!

# Use these resources for documentation:

- [api.rubyonrails.org](http://api.rubyonrails.org/)

Read More About Relations before class tomorrow (skim and don't worry about the bottom):

- [Rails Guides on Relations](http://guides.rubyonrails.org/association_basics.html)

If you want to incorperate more information about Pokemon, checkout:

- https://github.com/Matheus28/Pokemmo/blob/master/server/data/pokemon.json
(note reading about relations above will let you do more advanced things if you like to model some of these relationships)

Also all the code from class is pushed up.


