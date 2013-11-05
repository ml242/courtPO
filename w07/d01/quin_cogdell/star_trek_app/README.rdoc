## Star Trek

Let's talk about Star Trek

## On your page

Create a `section` tag with an `id` of `space`

Inside `#space` create an `article` tag with an `id` of `enterprise` and a class of `starship`

Create a `section` tag with an `id` of `vulcan` and a class of `planet`

On `#vulcan` create 4 `p` tags with the `class` of `vulcan` from the following array

```
var vulcans = ["sarek", "Skon", "Solkar", "Sybok"];
```


##Let's talk about events

When you mouseover `#enterprise` it should display the total number of crew and refugees on board.

When you double click on Vulcan it should beam down the crew of the Enterprise.  Display each crewmember as a `p` tag and make their backgrounds match their shirt color.

When you double click on a `.vulcan` beam them up to `#enterprise`. Create a new `XMLHttpRequest` to save them to your database as a refugee.

When you double click on `#enterprise` it should display a form to create a new captain's log.  Create a new captain's log entry by posting using an `XMLHttpRequest`

## We're under attack!

Inside `#space` create a new `article` tag with `class` of `bird-of-prey` and a `class` of `starship`.

##Let's talk about events

single clicking on a ship reduces it's health by `10`

double clicking on a ship reduces it's health by `50`

When a ship's health is at 0 it should be removed from the page.

Use `setInterval` to make Klingon `bird-of-prey` ships appear every 1 minute.
