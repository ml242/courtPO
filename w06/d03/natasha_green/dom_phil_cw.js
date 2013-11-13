var hobbits = [
  "Frodo Baggins",
  "Samwise 'Sam' Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin 'Pippin' Took"
];

var buddies = [
  "Gandalf the Grey",
  "Legolas",
  "Gimli",
  "Strider",
  "Boromir"
];

var baddies = [
  "Sauron",
  "Saruman",
  "The Uruk-hai",
  "Orcs"
];


// ## 1

// ```
// var lands = ["The Shire", "Rivendell", "Mordor"];

// function makeMiddleEarth(lands) {
//     // create a section tag with an id of middle-earth
//     // add each land as an article tag
//     // inside each article tag include an h1 with the name of the land
// }

// makeMiddleEarth(lands);
// ```


var lands = ["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands) {
  var middleEarth = document.createElement('section');
  middleEarth.id = "middle-earth";

  for (var i = 0; i < lands.length; i++) {
    var articleTag = document.createElement('article');
    var h1Tag = document.createElement('h1');
    h1Tag.textContent = lands[i];
    articleTag.appendChild(h1Tag);
    middleEarth.appendChild(articleTag);
  }

  document.body.appendChild(middleEarth);
}

makeMiddleEarth(lands);


// ## 2
// ```
// function makeHobbits(hobbits) {
//   // display an unordered list of hobbits in the shire
//   // give each hobbit a class of hobbit
// }
//
// makeHobbits(hobbits)

function makeHobbits(hobbits) {
  var ulTag = document.createElement('ul');
  var shire =  document.getElementsByTagName("h1")[0]

  for(var i = 0; i < hobbits.length; i++) {

    var hobbitsTag = document.createElement('li');
    hobbitsTag.className = "hobbit";
    hobbitsTag.textContent = hobbits[i];
    ulTag.appendChild(hobbitsTag);
  }
   shire.appendChild(ulTag)
}

makeHobbits(hobbits)

// ## 3
// ```
// function keepItSecretKeepItSafe() {
//   // create a div with an id of 'the-ring'
//   // add the ring as a child of Frodo
// }
// ```

function keepItSecretKeepItSafe() {
  var theRing = document.createElement('div')
  theRing.id = "the-ring";

  document.getElementsByTagName('li')[0].appendChild(theRing)
}

keepItSecretKeepItSafe()

// ## 4


// function makeBaddies(baddies) {
//   // display an unordered list of baddies in Mordor
// }

function makeBaddies(baddies) {
  var ulTag = document.createElement('ul');
  var mordor =  document.all[17]

  for(var i = 0; i < hobbits.length; i++) {

    var baddiesTag = document.createElement('li');
    baddiesTag.textContent = hobbits[i];
    ulTag.appendChild(baddiesTag);
  }
   mordor.appendChild(ulTag)
}

makeBaddies(baddies)

//## 5

//```
// function makeBuddies(buddies) {
//   // create an aside tag
//   // display an unordered list of buddies in the aside
//   // Make the Gandalf text node have a grey background
// }
// ```

function makeBuddies(buddies){
  var asideTag = document.createElement('aside');
  var ulTag = document.createElement('ul');

  for (var i=0; i < buddies.length; i++) {
    var buddiesTag = document.createElement('li');
    buddiesTag.textContent = buddies[i];
    ulTag.appendChild(buddiesTag);
  }
  document.all[0].appendChild(ulTag);
  test = document.getElementsByTagName("*");
  test[24].style.background = 'grey';
}

makeBuddies(buddies)