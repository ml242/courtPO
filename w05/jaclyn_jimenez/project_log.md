##Name: Jaclyn Jimenez
##Working Title: GEEKout
GEEKout is for people passionate about specific interests. The site is meant to be a resource to view places and events nearby that are relevant to specific interest, with a focus on 'geeks'. It is community focused, tagging and comments are key.

#####BUGS

- select tag does not save to table -> figure it out?? FIXED!!!!
- what if event spans multiple days? -> add 'end date' column DONE!!!
- value too long 'description' -> there must be an option for this. FIXED!!!


#Project 1
## Requirements
- 3 Models
- Views
- handles invalid data (nil, wrong username/pw)
- heroku
- user login
- styling
- use an API

###I should do research on APIs.


##What problem are you trying to solve?

- For gamers: what do i do? were do i take my friends? how will i know whats going on nearby?

- Sometimes we don't even know what's in our own backyards or what other fandoms are doing nearby but maybe we'd be interested if we knew about it. Like I've told people about events at the ny public library or diversity conference and they were like damn i wish I knew about it before it passed. Categories are essential.

- Honestly if we bring people together and we see each other face to face people will be less compelled to be assholes to each other online all the time. Make a point of being inclusive.

- there are some interesctions you might want to be aware of, ability to filter for multiple categories if you have very specific interests



###At a very high level, how is your app going to solve this?
##Break down your project into for each day of the upcomming week. You need to specify deadlines for each day. Be specific.

- resource for geeks and gamers to view places nearby that are of interest to geeks and gamers.
- community focused, tagging and comments are key



###what are my models?
- places (places/events)
- tags
- tagging (join table "places have_many tags through tagging")
- users
- sessions

###Phase 1: Basic CRUD for events [Completed Monday 10/21]
- simple elegant event CRUD with database
#####Story
- as a user I want to view a list of outings
	- I want to be able to click on outings from list and view more info, to decide if I would like to participate
- as an admin i want to add, edit, and delete outings. (Add admin permissions after user authentication, for now adding, editing, and deleting is public)

###Phase 2: Tag CRUD; tags categorize events [COMPLETED Tuesday  10/22]
Events and places have tags, when you click on a tag you see all events with that tag.
#####Story
- as an admin I want to add and delete tags. (done)
- As a user I want to see all categories 1h (done)
- As a user/admin I want to associate events/places with the appropriate tags by editing the event (done)
- As a user I want to click on a tag and be taken to a list of events that are filtered by that category(done) 
- As a user I want to see a list of an event's categories(done)

###Phase 3: Searchable with Filters [COMPLETED Wednesday 10/23]
Ability to filter and sort by date, category, location

####Story
- As a user I want to be able to filter my search for outings by tags using checkboxes (done)
- - As a user, I should be able to see the results of my search and click to view more info on an event. (done)

-  filter by location & tag. (done)

-  sort by date (done)

- choose to match all tags or any(done)


###Phase 4: User Authenticate [COMPLETED Thursday 10/24]

- login/sign up allows you to add events/places

####Story
- as a user i want to be able to create an account (done)
- as a user i want to be able to log in to my account (done)
- as a logged-in user I want to be able to add events and associate them with tags (done)

I do not expect to get passed Phase 4 by Friday.
At this point I would stop and fix existing bugs, make it pretty with CSS.

##Backlog
###Phase 5: Commenting
- as an admin i want to add, edit, and delete outings and tags. 

####Story
- as a user i want to be able to view all comments on an event page
- as a user i want to add a comment onto an event
- as a logged-in user I want to be able to comment on event pages 

###Phase 6: Self Populating
- Possible APIs:  
	- FB event API: Could grab all public events that have certain tags.
	- meetup.com API to add events
	- yelp/4square API to add locations with tags like arcade etc.
	
#####Stories
- as a users i would like to see as many search results as possible. i would like to see events from facebook and others sites aggregated here
