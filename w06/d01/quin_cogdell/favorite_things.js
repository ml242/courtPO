favThings = ['UNC', 'pizza', 'basketball', 'tv']

var showThings = function(things) {
  for (i=0; i<things.length; i++){
    var message = "My #" + (i+1) + " favorite thing is " + things[i] + "."
    console.log(message);
  }
}

showThings(favThings)
