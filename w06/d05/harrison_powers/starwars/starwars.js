var say = function say(el, bool) {
  if (el.name === 'Admiral Ackbar' && bool === true) {
    return 'It\'s a trap!'
  } else {
    return 'May the Force be with you.'
  }
};


var c1 = {name: "Luke Skywalker", side: "Rebel Alliance"};
var c2 = {name: "Darth Vader", side: "Galactic Empire"};
var c3 = {name: "Admiral Ackbar", side: "Rebel Alliance"};
var c4 = {name: "Emperor Palpatine", side: "Galactic Empire"};

var characters = [c1, c2, c3, c4];


var selectTest = WDIBelt.select(characters, function(character){
  return (character.side === "Rebel Alliance");
});

console.log(selectTest)
