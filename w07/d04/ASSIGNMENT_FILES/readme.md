# Cinder
**Tinder for cats.**

---
Cinder has two parts:

- it is a crud application to CRUD cats
- there is the voting system where you an upvote and downvote kittens.

### Instructions
Do not copy any of the below Cinder anywhere. Instead, inside of hash_work, inside your own homework folder, create a brand new rails app called "cinder". See the cheatsheet referenced in the root directory of this folder.


### 0_plain_old_crud_app
---
Build a plain 'ol CRUD app for kittens

### 1_plain_old_crud_app_with_json
---
Now have the plain_'ol CRUD app be able to respond with JSON

### 2_with_voting
---
Now add a voting system to the appliation for a given kitten.

### Using Postman Chrome Extension
---


##### Directions for each step:
Write down the following for each step:

- what was the type of the command you issued (GET, POST, PUT, DELETE)?
- what was the path?

Your resulting answers should be written down in a newly created solutions file inside your homework directories and should look like this for each of the below:

1. Create a new kitten
	POST /kittens.json {
		name: "Jonathan",
		tag_line: "Is a boss kitty",
		age: "22",
	}


##### Steps:

Make sure to binding.pry through the various rails portions on this below

1. Create a new kitten
2. Get the kitten you just created
3. Get all the kitttens
3. Create another new kitten
4. Get the kitten you just created
5. Modify a property of the most recently created kitten
6. Get the same kitten
2. Modify the given kitten



