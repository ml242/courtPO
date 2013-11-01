#Week 6 Day 5 Morning Exercise

We're going to be reviewing functions, event handlers, and DOM manipulation, as well as learning how to work with JavaScript assets in a Rails environment.

## To the terminal!

In your `classwork` folder, create a new Rails app without a database by running:

```ruby
rails _3.2.14_ new js-lounge -O
```

We will use this project as a sandbox and add on to it in future exercises, so don't delete it.
## Exercise - Part 1

### Set up the route
There's no database to setup, so you can jump straight to setting up a controller and root route.

- Create a `welcome_controller.rb`
- Create a `welcome/index.html.erb` view.
- In `config/routes.rb`, set the root path to `welcome#index`

Don't forget to delete `public/index.html`
### Create a js file
Add a new file, `assets/javascripts/part1.js`

Add an `alert("Hello World!")` to the js file, start the server, and visit `localhost:3000`. The alert should pop. Sweet! The js is loaded up for us automatically!

### The index view

In the index view:

- have a div with the class name `box` and id `box`
- have a text input with the id `color-input`
- have a button with the id `color-btn`

**NOTE**: We don't need to create any forms here

The box should have a height and width, and be distinguishable from the background of the page, somehow, whether that means a border, a background color, whatever. It's up to you.

#### Functionality
- I should be able to input a color
- Upon clicking `#color-btn`, the `#box` on the page should have its background color set to whatever I put into `#color-input`

##### Process
- define a `function setBoxColor()` that grabs the `color-input`'s current value, and then sets the background color of `box` accordingly.
- use an event listener to listen for a click event on the `color-btn`
    -  when the click event fires, trigger `setBoxColor`


## Exercise - Part 2
We want to add another page for the next part

### Update your routes
```
match 'part2' => 'welcome#part2'
```

Now create a `welcome/part2.html.erb` view

### Adding another js file
Create `assets/javascripts/part2.js` and add an `alert("Hello World!")` to it.

You'll notice, though, the alert pops on both `localhost:3000` and `localhost:3000/part2`. *Maaan...* It's going to pop on **every** page.

Maybe having all of the JavaScript files automatically loaded up isn't so sweet, after all...

#### Set up page-specific scripts

- Modify the application.js, removing the `//= require tree .` line
  - Scripts will not be included automatically anymore, so we'll be handling that manually.
- You can load a script into the page that needs it by putting this into the view: `<%= javascript_include_tag "THE SCRIPT FILE'S NAME HERE" %>`

### The part2 view

In the part2 view:

- have a text input with the id `size-input`
- have a text input with the id `color-input`
- have a button with the id `box-btn`

#### Functionality
- I should be able to input a size (eg: "200px")
- I should be able to input a color
- Every time I click `#box-btn`, a new div with the class "box" should be created and added to the page.
  - Each side of the created `.box` (width & height) should be whatever I put into `#size-input`.
  - The background color of the created `.box` should be whatever I put into `#color-input`


