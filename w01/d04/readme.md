###Week01-Day04

#WORK IN YOUR OWN FOLDER ONLY!

##1. MTA - The NYC Subway System

- There are 3 subway lines:
  - The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
  - The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
  - The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
  - All 3 subway lines intersect at Union Square, but there are **NO** other intersection points.
    - For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, **so you'll have to differentiate this** when you name your stops in the arrays. (example: "28th-s" for 6 line and "28th-n" for n line)
- The program takes the line and stop that a user is getting on at and the line
and stop that user is getting off at and prints the total number of stops for the trip.

---

###Hints:
- Get the program to work for a single line before trying to tackle multiple lines.
- Consider diagramming the lines by sketching out the subway lines and their stops and intersection.
- Make subway lines keys in a hash, while the values are an array of all the stops on each line.
- The keys to your hash should be symbols. Keep in mind that symbols cannot begin with a number.
- The key to the lab is the intersection of the lines at Union Square. Google "ruby array intersect."
- Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)


---

##Non-Required:

###Front-End Bonus:
- Include colors, i.e. try the `rainbow` gem. [Read about it here.](https://github.com/sickill/rainbow)

####Example:
```ruby
require 'rainbow'
puts "Welcome to NYC!".color(:red)
puts "We ride the subway here...".color(:red)
puts "It will be easy with this my help:".color(:yellow)

```

###Back-End Bonus:
- Implement input validation
  - User MUST enter a line and station that is IN the subway network
  - If the user enters something else, your program should handle it gracefully
- Add additional lines
- Allow trains to have multiple intersection points


####Final Thoughts:
- Will your code work if/when we add ALL of NYC's subway lines?