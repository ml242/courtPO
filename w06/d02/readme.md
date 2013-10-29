Week 6 Day 2 HW
============
Apply your knowledge of JavaScript to solve a problem we've already tackled in Ruby.
Create a program that models a simple subway system. The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and returns the total number of stops for the trip.

- **MTA.js**
    - Create a simple subway system
    - **Functionality**
      - Prompt the user for all of these arguments:
          - starting line
          - starting station
          - ending line
          - ending station
      - Finally, bring up an alert that states the number of stops needed to make the trip
    - **Constructor Functions**
        - Define a `Line` Constructor Function 
            - You will use this function to create `new Line()` objects for each train line
            - A line's name and stops (an array) should be passed to the constructor function and stored within the object.
                - example of storing name with constructor function: `this.name = name`
        - Define a `SubwaySystem` Constructor Function
            - Every line should be stored within this object
            - All of the user prompts should also take place here
    - **Lines**
        ```js
        // You will first need to define the Line() constructor function to create new Lines

        var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
        var L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']);
        var S = new Line('S', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
        ```
        - All 3 subway lines intersect at Union Square, but there are no other intersection points.

        #### Hints:

        * Get the program to work for a single line before trying to tackle multiple lines.
        * Don't worry about user input. Start off by just hardcoding your stop and line choices in local variables.
        * Remember, you've done this in Ruby before. Look at your code and figure out how to do it in JavaScript.

