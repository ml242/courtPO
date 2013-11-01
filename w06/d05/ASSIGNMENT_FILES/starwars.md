let's talk about Star Wars.

```
var d1 = {name: "C-3P0", model: "protocol droid"};
var d2 = {name: "R2-D2", model: "astromech"};

var droids = [d1, d2];

function status(){
    console.log(this.name + ", " + this.model + " at your service.");
}
status.call(d1);
```

Let's talk about our WDIBelt

```
var WDIBelt = WDIBelt || {};

WDIBelt.each = function(array, func) {
    for (var index = 0; index < array.length; index++) {
      var element = array[index];
      func(element);
    }
}

WDIBelt.each(droids, status);
```

Update the `each` method so that it returns `this` in the correct context.

While you're at it, update `each` so that it the function takes the element and its index as parameters.

Let's talk about Star Wars

```
var s1 = {name: "Bail Organa", allegiance: "Rebel Alliance"};
var s2 = {name: "Mon Mothma", allegiance: "Rebel Alliance"};
var s3 = {name: "Admiral Ackbar", allegiance: "Rebel Alliance"};

var rebelAlliance = [s1, s2, s3];
```

Write a function called `say`

If we call it with `s3` it should return "It's a trap!" otherwise return "May the Force be with you."

Can you refactor `say` so that it takes a boolean as a parameter. If we call it with `s3` and pass in false it should return "May the Force be with you."

Let's talk about our WDIBelt.  We want to get an array of strings of the names from the Rebel Alliance.

```
var WDIBelt = WDIBelt || {};

WDIBelt.map = function(array, func) {
    var results = [];
    for (var index = 0; index < array.length; index++) {
      var element = array[index];
      results.push(func(element));
    }
    return results;
}
```

Try implementing `WDIBelt.select`

It should return an array of elements that pass a truth test.

```
var c1 = {name: "Luke Skywalker", side: "Rebel Alliance"};
var c2 = {name: "Darth Vader", side: "Galactic Empire"};
var c3 = {name: "Admiral Ackbar", side: "Rebel Alliance"};
var c4 = {name: "Emperor Palpatine", side: "Galactic Empire"};

var characters = [c1, c2, c3, c4];

// Example usage

WDIBelt.select(characters, function(character){
    return character.side === "Rebel Alliance";
})
```

Try implementing `WDIBelt.random`

It should take an array and return a random element from the array.

```
var ewoks = ["Chirpa", "Kneesaa", "Logray", "Wicket", "Paploo", "Tarfang", "Teebo"];
WDIBelt.random(ewoks) // "Wicket"
```

Try implementing `WDIBelt.contains`

It should take an array and a value as parameters and return true if the array contains that value.

```
WDIBelt.contains("Paploo") // true
WDIBelt.contains("Simon")  // false
```