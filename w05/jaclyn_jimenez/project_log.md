##Name: Jaclyn Jimenez
##Working Title: GEEKout
GEEKout is for people passionate about specific interests. The site is meant to be a resource to view places and events nearby that are relevant to specific interest, with a focus on 'geeks'. It is community focused, tagging and comments are key.

###what are my models?
- events
- tags
- tagging (join table "events have_many tags through tagging")
- users
- sessions

###Phase 1: Basic CRUD for events [Completed Monday 10/21]
- simple elegant event CRUD with database
#####Story
- as a user I want to view a list of outings
	- I want to be able to click on outings from list and view more info, to decide if I would like to participate
- as an admin i want to add, edit, and delete outings. (Add admin permissions after user authentication, for now adding, editing, and deleting is public)

###Phase 2: Tag CRUD; tags categorize events
Events and places have tags, when you click on a tag you see all events with that tag.
#####Story
- as an admin I want to add and delete tags. (done)
- As a user I want to see all categories 1h (done)
- As a user/admin I want to associate events/places with the appropriate tags by editing the event
- As a user I want to click on a tag and be taken to a list of events that are filtered by that category 
- As a user I want to see a list of an event's categories

###Phase 3: Searchable with Filters
Ability to filter and sort by date, category, location

####Story
- As a user I want to be able to filter my search for outings by location & tag. On the search page there are checkboxs with tags, locations and 'sort by' that change what and how results are displayed. 
- As a user, I should be able to see the results of my search and click to view more info on an event.


###Phase 4: User Authenticate

- login/sign up allows you to add events/places

####Story
- as a user i want to be able to create an account
- as a user i want to be able to log in to my account 
- as a logged-in user I want to be able to add events and associate them with tags
- as an admin i want to add, edit, and delete outings and tags. 

I do not expect to get passed Phase 4 by Friday.
At this point I would stop and refactor my code, make it pretty with CSS.

##Backlog
###Phase 5: Commenting

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