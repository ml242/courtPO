#Morning Exercise

## Obtaining a Google Maps API Key

[Instructions](https://developers.google.com/maps/documentation/javascript/tutorial#api_key)

Store the Google Maps API Key as an Environmental Variable called `GOOGLE_API_KEY` in your `~/.bash_profile`

## the marauder_app
Create a new Rails app called `marauder_app` with a postgres database.

Create a user model. A user should have a `name`, and `email`.

Add the following to your `application.html.erb` file

```
 <script type="text/javascript"
         src="https://maps.googleapis.com/maps/api/js?key=<% ENV['GOOGLE_API_KEY'] %>&sensor=true">
  </script>
```

Add `root to: 'welcome#index'` to `routes.rb` and the corresponding controller and view.

##welcome#index

Should have a `form` element with `text inputs` for `name` and `email` and a submit `button`.

Should have a `div` with an `id` of `notice`

## Add some javascript

Create a javascript file called `app.js`

In `app.js` create a javascript object literal called `app`

When a user inputs their name and email into the form and clicks `submit`, have a method called `app.createUser` that uses `$.ajax()` to create a new user in your database.  Send back the new user as `json`.

In `#notice` display "Created USERNAME" then fade out.

## Add a map
Add a `div` with an `id` of `map-canvas` to `welcome#index`

Give `#map-canvas` a height and width with css.

## Add some more JS
Create a method on `app` called `makeMap` that runs the following code:

```
var mapOptions = {
    center: new google.maps.LatLng(-34.397, 150.644),
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
};

var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
}
```

Call `app.makeMap` when the DOM has loaded.

## Add a button
Add a button with the `id` of `drop-pin`

Create an `.on` event that runs the following code when `#drop-pin` is clicked

```
var myLatlng = new google.maps.LatLng(-25.363882,131.044922);

var marker = new google.maps.Marker({
    position: myLatlng,
    title:"Hello World!"
});

marker.setMap(map);
```

## Push to heroku