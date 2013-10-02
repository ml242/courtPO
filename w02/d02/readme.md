#HW Week 1 - Day 2
#WORK IN YOUR OWN FOLDER ONLY!
---
## Brooklyn Lab
Copy and Submit the Brooklyn Lab work that you did in class today. If you were able to finish the Brooklyn Lab during class, and are looking for an extra challenge, move on to the Sinatra MTA App below.
---
## Extra Work - Sinatra MTA App


Build a Sinatra App for the MTA

- Your ruby code will need to include a constant that points to a hash called MTA
    - `MTA = {
  :l_train => ['bedford', '1st ave'],
  :g_train => ['greenpoint', 'nassau'],
  :n_train => ['canal', '8th'],
}`
    - the keys are train lines. the values are arrays of station name strings
- `localhost:4567/plan` displays an unordered list (HTML `ul` and `li` elements) of all train lines
   - Each train line in this list is a link (`a` tag)
   - if you click on a train line link, you'll go to `localhost:4567/plan/[LINE]` and then see all of the stops on that line
   - **example:** when you click the L line, you'll be taken to /plan/l_train and see all of the L train's stops

 - **Style it with CSS!**

###Bonus: Journey planner
Add more stops to your MTA hash, and using query string parameters, give commuters a way to plan out a journey.

 Navigating to `localhost:4567/journey?`start_train`=g_train&`stop1`=nassau&`end_train`=l_train&`stop2`=bedford` should display the total number of train stops that will occur in the journey


---

#WORK IN YOUR OWN FOLDER ONLY!
