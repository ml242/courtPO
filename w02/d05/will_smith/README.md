Will Smith

# Weekend Homework!
## Movies App
- Create a single page Sinatra app that queries the [Open Movies DB API](http://www.omdbapi.com/) by movie title
- When a user submits the search form, redirect them to `localhost:4567/movies/search` and display the list of returned movie titles
- Make each title a link that the user can click on
- When a user clicks on the link, redirect them to a page that shows the details of that particular movie. The URL should be `localhost:4567/movies/:imdbID`
   - Each movie will have a unique imdbID that you can find in the OMDB API response
   - **Example**: For True Grit, the URL would be `localhost:4567/movies/tt0065126`
- Show the movie's `Year`, `Rated`, `Released`, `Runtime`, `Genre`, `Director`, `Writer`, `Actors` and `Plot`
- If the movie has a poster, also display the `Poster` as an image and make it link to a google search about the movie

## If you wanna practice CSS (Optional, but awesome*)


![](ASSIGNMENT_FILES/scout-registration.jpg)
### Try to reproduce this form in HTML & CSS
- Think about it first! Spend some time "eyeballing" the design.
- Build out the form structure
    - Identify the main blocks that make up the foundation
    - Work out the HTML and content, and *then* start CSS and presentation.

*Tip*: Don't try to make the "Official Use Only" part of the form using HTML checkboxes, just use some text inputs for someone to type "X" into.

#### Oh, you fancy, huh?
- Look through [Google Fonts](http://google.com/fonts) for Handwriting/Cursive and Typewriter style webfonts, and use them in your page.
-  You can rotate elements with CSS using `transform: rotate(deg)`. See CSS Transforms in the resources.

## Additional Resources

- [Dynamic URLs in Sinatra](http://blog.teamtreehouse.com/ruby-sinatra-dynamic-urls-tutorial)
- [Open movie database API](http://www.omdbapi.com/)
- [HTTParty Tutorial](http://blog.teamtreehouse.com/its-time-to-httparty)
- [Getting Started with Google Fonts](https://developers.google.com/fonts/docs/getting_started)
- [CSS Transforms](http://www.css3files.com/transform/)
- [Subtle Patterns](http://subtlepatterns.com/)
- [Dabblet](http://dabblet.com/)
- [JSbin](http://jsbin.com)


\* This is just Alicia's opinion.