Will Smith

# TODO
- add drills
- add extra credit (encapsulte into object code)

# Cute Kitten Shop

## Note
Read through all of the directions first before proceeding with this assignment. Spec out the entire assignment on paper before you proceed.

Your job is to create a piece of software that allows a kitten shop owner to manage and keep track of all the pets inside his pet shop.

Here are all the various attributes that the pet shop owner cares about for a particular Kitten
- name
- age
- is_cute
- image_url (A String that is the url of where that image of the cat can be found at)


# Phase 0
**Postgres**

1. Create a database to store all of your tables for your cute kitten shop.
	- What is a good name for this database? 
2. Create a table to store your kittens.
	- Which attributes and what datatypes should the various fields of a Kitten have?

# Phase 1
**Postgres + Sinatra**

**Do not create any kind of views for this stage**, just the routes that do basic CRUD (Create Read Update (extra credit) and Destroy). You will create the views in a later stage.

## Hint:
Before even writing any of the routes below, think about what:
- Write out the params `params` do you need to pass the particular route in order for it to do its thing (practice writing a hard-coded example set of parameters)
- Write out the raw SQL queries you need to run to accomplish the desired functionality for a particular route. Try writing these manually based on the example params you created above straight up in `psql` first.
- DO NOT CREATE ANY VIEWS TO DO THESE THINGS
	- You therefore probably should use Postman, the Chrome extension you learned about today to test out all your routes to make sure they work. 

Here are the routes that you need to implement.

```
POST /kittens
- Creates a new kitten in the database
- returns a hash representation of that kitten

GET /kittens
- Asks the database for all of the kittens
- returns an array of hashes where each hash represents the properties of the kitten

GET  /kittens/:id
- Asks the database for a single kitten
- returns a single hash representing a single kitten

# EVERYTHING AFTER IS EXTRA CREDIT

POST /kittens/:id/delete
- Removes a kitten from the database
- returns `true` if it was able to remove the kitten

POST /kittens/:id
- takes any of the passed in parameters
- updates only those parameters for a single kitten
```



#### Creating / Registering A New Kitten
**Method / Route**

```
POST /kittens
```
**Description**

The owner wants to be able to go to create a new Kitten by sending a `POST` request to `/kittens`. The post parameters that should be passed in should look like this:

```
{
	:name => "Chelsea",
	:age => 3,
	:is_cute => true,
	:image_url => "http://placekitten.com/300"
}
```

When test to see if POSTING to this route works, use the PostMan Chrome extension that we learned in class. Just like the previous homework, after it finishes posting, redirect to `GET /kittens` to get the listing of all the kittens.


#### Viewing All The Kittens
**Method / Route**

```
GET /kittens
```

Initially, return a basic `postgres_response.entries.to_s` as the response for this to make sure that it is working. This is the array of hashes.


#### Getting A Specific Kitten
**Method / Route**

```
GET /kittens/:id
```

Get the hash representation of a single kitten that has a particular id. For example, `GET /kittens/3` should return to me the information about the single kitten that has an id of 3 in the database..


#### [EXTRA CREDIT] Removing A Specific Kitten 
**Method / Route**

```
POST /kittens/:id/delete
```

Removes a specific kitten from the database

#### [EXTRA CREDIT] Updating the attributes of a specific Kitten
**Method / Route**
```
POST /kittens/:id
```

For a given kitten, modify the kitten to have any passed params attributes. For example, if we look at the given kitten that we created above:

```
{
	:name => "Chelsea",
	:age => 3,
	:is_cute => true,
	:image_url => "http://placekitten.com/300"
}
```

If something has changed about this Kitten, such as the age, the only parameters you need to pass to `POST /kittens/:id` are the parameters that you want to change. So to just update Chelsea's age, just pass the following params (and obviously the `id` as well but that is done in the route itself. ).

```
{:age => 4}
```

# Phase 2

Now that all of your actual "data" logic works, generate the required views / .erb files / forms that you need to make it work. Here are the paths that you 

```
GET /kittens/new
- this returns an erb page that has the form to create a new kitten
- the form itself should look like this:
 	<form method="post" action"/kittens">…</form> to post 	
```

Then, if you happen to get here, change your really boring looking hashes to actual HTML pages that display the info / photo of the kitten!

### Extra Credit: Create all the other necessary views
