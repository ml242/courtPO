# Homework: More Practice With CRUD Apps in Rails!

For your homework, you will be building essentially the same thing that you built in class today:

1. a CRUD JSON API built inside of a rails application
2. and a single page javascript app that lives in your /public folder of this new rails project.

Note that these are completely separate things. Your API can be consumed by anyone, you just happen to be writing an Javascript single page app to consume the API that you built.


Why are we practicing the same thing? This is for [deliberate practice](https://www.google.com/search?q=deliberate+practice&oq=deliberate+practice&aqs=chrome..69i57j69i65l3j0l2.1800j0j7&sourceid=chrome&espv=210&es_sm=119&ie=UTF-8)

The context: you will all be building an API for our class where the API will let you Create, Read, Update, and Destroy students in our class.

Note for this app, YOU DO NOT NEED ANY RAILS VIEWS! The app *only* needs to output JSON!

Initially, for everyone in the class, the only things we care about about are `name`, `email`, and their `image_url`. After you finish those features, go ahead and add other fields.

You can access everyone's data from the [kick-hash spreadsheet](https://docs.google.com/spreadsheet/ccc?key=0AggpMwEqzvVzdGs2eThHNmhidnJUVkc4NWhVczQ0Wmc&usp=drive_web#gid=0).


# API Specification

```
# GET /students
# 	with no arguments
Should return an array of all the student objects

# GET /students/1
#	with no arguments
Should return a single student as an object


# POST /students
#	with the following data: {
		student: {
			name: "Jonathan Leunginator",
			email: "me@jonl.org",
			image_url: "http://image.com/jonathan.jpg"
		}
Should create a new kitty in the database and return it as a kitty object.


# PUT /students/1
# 	with the following data: {
		student: {
			name: "Jonathan Leunginator",
			email: "me@jonl.org",
			image_url: "http://image.com/jonathan.jpg"
		}
	}
Should return to you the updated object.


```

# Steps
1. You should completely finish your API first before moving on to your Javascript component.
2. Write 5 bare bones AJAX (to create, read a single user, read all the users, update a single user, and destroying a single user) before moving forward to ensure that your Rails API works:

ie:

```
$.ajax({
  type: "PUT",
  url: "cats/3",
  data: {
  	name: "Jonathan Leunginator",
  }
}).done(data) {
  console.log(data);
}


$.ajax({
  type: "PUT",
  url: "cats/3",
  data: {
  	name: "Jonathan Leunginator",
  }
}).done(data) {
  console.log(data);
}
```


3. Only