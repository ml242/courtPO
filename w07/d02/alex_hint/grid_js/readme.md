# What is JQuery?

# JQuery Documentation is very good!

# JQuery Learning Items!
let me google that for you

$ vs jQuery
- .each
[- Window on Ready](http://api.jquery.com/ready/)

- Select By
	- [class](http://api.jquery.com/class-selector/)
	- [id](http://api.jquery.com/id-selector/)
	- [element](http://api.jquery.com/element-selector/)
- How many things does JQuery return on a select?
- [Creating a new Element](http://stackoverflow.com/questions/10619445/best-way-of-creating-a-new-element-in-jquery)
- [Nested Selects](http://stackoverflow.com/questions/6933763/how-do-i-select-item-with-class-within-a-div-in-jquery)
- [Caching Selects](http://mikeadamsnc.com/cache-jquery-selectors-for-better-performance/)
- [Children](http://api.jquery.com/children/)
- [Chaining](http://tobiasahlin.com/blog/quick-guide-chaining-in-jquery/)
- [Appending](http://api.jquery.com/append/)
- [Removing](http://api.jquery.com/remove/)
- [Creating a new element](http://stackoverflow.com/questions/268490/jquery-document-createelement-equivalent)
- [Adding arbitrary attributes](http://api.jquery.com/attr/)
- [Event Listeners](http://api.jquery.com/on/)
[- CSS](http://api.jquery.com/css/)

### What is JQuery
[link](http://en.wikipedia.org/wiki/JQuery)

### JQuery Fundamentals
[link](http://jqfundamentals.com/)

### JQuery & Ajax Best Practices
[Link](http://gregfranko.com/jquery-best-practices)

### JQuery Demo [in 0_jquery]
- Do walkthrough first, 
- Fix Efficiency Problem, append once


# How to approach the below problems:
1. Try the problem and do your best!
2. If you're stuck, don't look at the solution, raise your hand and we'll come around! The objective of this is to practice your thinking and modeling skills!
3. When you have a working version, COMMIT!
	4. Name your commit so that it matches the phase, ie "1_click_to_pink_inline_css"	
3. Only when you have a working version, check our working version, (just open it, examine the structure, and then close it)
4. Refactor your solution and / or propose changes on way that we did it could be refactored! The next solution builds off of the previous one.
5. And then COMMIT AGAIN!)
 	4. Name your commit so that it matches the phase with "REFACTORED in it", ie "02_hover_to_green_refactor_REFACTORED"
6. Do the next phase.7. 


# Project 1: Color Changer


In this project, you will be clicking on a button to chage the background color of a page!

### 1_click_to_pink_inline_css
===
[Demo](1_pink/1_click_to_pink_inline_css/index.html)

Use JQuery so that when you click on "Click Me", it will make the page have a pink background. Use JQuery's `.css` method to do this first which changes it's inline style.

### 2_click_to_pink_via_setting_class
===
[Demo](1_pink/2_click_to_pink_via_setting_class/index.html)

Instead of changing inline styles, it is much better to add and remove class names to change functionality. Use jQuery's `.addClass` and `.on` function to do this.

### 3_click_to_pink_click_to_unpink
===
[Demo](1_pink/3_click_to_pink_click_to_unpink/index.html)

Now when you click on it again, make it so that the background is no longer pink.

### 4_click_to_change_through_colors
===
[Demo](1_pink/4_click_to_change_through_colors/index.html)

Now when you click it, it doesn't just change to pink, it changes through a slew of colors. Consider holding your colors in an array.
[Look into HSL color picking](http://hslpicker.com/).

# After Lunch

- Timer Excercise
- Practice figuring out things to model

# Project 2: Paint + Pokemon!

There should be 50% of your time spent on thinking about how to implement a given solution and 50% trying to build it. Call us over to you and walk us through your thinking processes! HINT: the CSS files matter a lot when thinking about this.

You will need to mess with the css! Thinking about how to use CSS to transform the way the page loads is a very important part of the process!

When inspecting the below code, open each project *individually* in sublime (don't open more than one program at a time or else it is really confusing). Then do a project wide search (Cmd + Shift + F) and look for the keyword "NEW" in all caps to see the changes in the given version.

### 01_dynamically_generating_blocks
===
[Demo](2_grid/01_dynamically_generating_blocks/index.html)

Figure out a way to dynamically generate all the tiles using jQuery. How could you do this?

### 02_hover_to_green
===
[Demo](2_grid/02_hover_to_green/index.html)

Add it so that when you hover over a block, it changes it to green and when you hover away, it changes back.
### 02_hover_to_green_refactor
===
[Demo](2_grid/02_hover_to_green_refactor/index.html)

Compare this version to the previous unrefactored version, what's the difference? Which is better? When you think you have a solution, talk it over with a neighbor who has also finished this and then consult one of us to see what you guys think!

### 03_click_tile_to_paint
===
[Demo](2_grid/03_click_tile_to_paint/index.html)

Be able to click a tile so that it persistently stays green.

### 04_click_and_hold_to_paint_tiles
===
[Demo](2_grid/04_click_and_hold_to_paint_tiles/index.html)

Be able to click and hold down tiles.

### 05_rows_for_smaller_tiles
===
[Demo](2_grid/05_rows_for_smaller_tiles/index.html)

Create rows for the tiles so that the proper spacing is fixed and that you can resize the entire page without it breaking the orientation. Try resizing this page vs the previous page.

For example, if this wasn't done (look at 04 from before and try resizing the pages), all the pixels will be rearranged in an improper order

### 06_small_blocks
===
[Demo](2_grid/06_small_blocks/index.html)

Make the blocks temporarily smaller so that it looks more like the MS paint app.

### 06 REFACTORING
[link](http://gregfranko.com/jquery-best-practices/#/)

Look through the above slides and figure out how to refactor our code so that it follows best practices! 
Note that the solutions code does not follow some of these fixes just to keep things easier to understand.
Think specifically about when things are being appended.

### 07_unfunctioning_color_palette
===
[Demo](2_grid/07_unfunctioning_color_palette/index.html)

Add a color palette that can be clicked on to select the color.

### 08_functioning_color_palette
===
[Demo](2_grid/08_functioning_color_palette/index.html)

Make the palette actually work. Make sure you checkout the notes in the CSS when you look at the solution of this after you make your own version.

### 09_refactor_smarter_remove_classes
===
[Demo](2_grid/09_refactor_smarter_remove_classes/index.html)

Refactor the previous one so that it doesn't just try to remove all of the classes.

### 10_refactor_dynamic_palette
===
[Demo](2_grid/10_refactor_dynamic_palette/index.html)

Dynamically adding the palette now so that I can add any sort of swatches.

### 11_change_to_pokemon_swatches
===
[Demo](2_grid/11_change_to_pokemon_swatches/index.html)

Change the swatches to pokemon!

### Building the Pokemon Game and having a charachter walk around!
===

Now figure out how to change a version of this game so that you can have a charachter walking around the board via the arrow keys (ie press up to move the charachter up). If it hits an obstacle, it should no longer be able to move in that direction. If it walks into a sign, an alert message should come up.

Don't build this today. THIS IS HARD. How would you model this problem? What constructor functions would you need? How would you organize the code. Talk through this and write down the specifications with a buddy!

A LOT of the code that we wrote above needs to be refactored in order to get this to work. A bunch of you guys asked me, when do you refactor? The answer, when you need to based on your objective. Now we need to because trying to implment a tile walking game on top of this without some more structure is extremely difficult and not very smart!

### Extra Credit (no solutions avaialble)
- How do you make an eraser so that if you right click on a tile, it changes it by default back to grass?
- Instead of manually having to specify how many pixels to generate, can you use the jquery .width and the .height to dynamically assign the number of rows and columns (geometrical math required : )
- How could you make a global undo function when you press cmd-z, it undoes the tile that you built


