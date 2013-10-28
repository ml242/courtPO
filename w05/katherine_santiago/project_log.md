MONDAY:
ii. Project log with estimated stories to be completed by Tuesday night

As a user, I want to be able to track what my state legislators are doing (and saying) in Washington, so I know who to vote for in the next election.
(See other user stories below)

Minimal SIGNUP in DEV is complete
--> Signup allows me to add email, pw and pw confirmation
--> sends me to a login page
--> sends me flash notice when there's an authentication error

/signup, /login (COMPLETE)
     As a user, I want to be able to sign up to be a user with my email and pw

     As a user, I want to create a profile that includes my address and state
          so that I can track specific legislators given where I live
     As a user, I want to be able to log in and see a list of my state's U.S. senators and U.S. representatives on my profile
     ((if time -- As a user, I want to keep track of pages that I've looked at))

     ((if time -- As a user, I want to see bills that I want to track on my profile))


/states
/states/:id
/states/:id/senators
/states/:id/senators/:id
     As a user, I want to be able to look up legislators for a given state
     As a user, I want to be able to click on a link to see a list of all states
          so that I can then look up the state's legislators
          -- As a user, once I click on a state, I will be able to see a list of U.S. senators and U.S. reps.
          -- As a user, once I click on a state, I can click on a link for a given U.S. senator or U.S. rep. to see their profile

     As a user, I want to be able to look up the name of a legislator
     As a user, I want to be able to click on a link to see all of the U.S. senators
     As a user, I want to be able to click on a link to see all of the U.S. representatives
          -- As a user, once I click on a legislator's name, I will be directed to a legislator's profile page
          As a user, after clicking on a specific legislator (senator or representative) …
          I can see the name, photo, party affiliation, state, contact information that person has introduced
          I can see a list of the committees that this legislator belongs to
          I can see a list of bills this senator has sponsored or co-sponsored
          ((I can see see the words the legislator used given a specific bill))


/bills
/bills/:id
     Index of all sponsored bills
     As a user, I want to be able to click on the bills link and see all bills in the database

     As a user, I want to be able to click on the bill name and be directed to the bills id page

     As a user, I want to see on the bills id page all the data about the bill

     As a user, I want to see which senator sponsored the bill

     As a user, I want to be able to click on the name of the senator(s) who sponsored the bill and find out more info on them


ii. Basic wireframes drawn on paper (COMPLETE)


iii. ERD graphic drawn on paper (COMPLETE)

     class Users
          id primary key
          name - string
          state_id - integer
          zip_code - string
          timestamps

     class States -- has_many :senators, :representatives
          id primary key
          state_name - string
          senator_id - integer
          representative_id - integer // did not add to simplify

     class Senators --   belongs_to :states
     has_many_and_belongs_to_many :committees
     has_many_and_belongs_to_many :bills
          id - primary key
          senator_name - string
          state_id - integer

     class Bills --      has_many_and_belongs_to_many :senators
               has_many_and_belongs_to_many :representatives
          id - primary key
          bill_name - string


