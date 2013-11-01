
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

// we made a section, entered into a loop, inside of which we made an article tag, and an h1 tag and we put some text on that. we want this h1Tag to be part of the articleTag, so append them. Then each one of those should be appended to the section. none of this is on the page yet. you stil need to add to document.
makeMiddleEarth(lands);

// display an unordered list of hobbits in the shire
 var hobbits = [
  "Frodo Baggins",
  "Samwise 'Sam' Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin 'Pippin' Took"
  ];

function makeHobbits(hobbits) {
  var ulTag = document.createElement('ul');
  ulTag.className = "hobbits";
  for (var i = 0; i < hobbits.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = hobbits[i];
    liTag.className = "hobbit";
    ulTag.appendChild(liTag);
  }
  var articleTag = document.getElementsByTagName('article')[0]
  articleTag.appendChild(ulTag)
// give each hobbit a class of hobbit
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var divTag = document.createElement('div');
  divTag.id = "the-ring";
  var frodoTag = document.getElementsByTagName('li')[0]
  frodoTag.appendChild(divTag)
  // add the ring as a child of Frodo
}

keepItSecretKeepItSafe();

var baddies = [
  "Sauron",
  "Saruman",
  "The Uruk-hai",
  "Orcs"
];

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var ulTag = document.createElement('ul');
  for (var i = 0; i < baddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = baddies[i];
    ulTag.appendChild(liTag);
  }
  var mordorTag = document.getElementsByTagName('article')[2]
  mordorTag.appendChild(ulTag);
}

makeBaddies(baddies);

var buddies = [
  "Gandalf the Grey",
  "Legolas",
  "Gimli",
  "Strider",
  "Boromir"
];

function makeBuddies(buddies) {
  // create an aside tag
  var asideTag = document.createElement('aside');
  document.body.appendChild(asideTag);
  // display an unordered list of buddies in the aside
  var ulTag = document.createElement('ul');
  ulTag.className = "buddies";
  for (var i = 0; i < buddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = buddies[i];
    liTag.className = "buddy";
    ulTag.appendChild(liTag);
  }
  asideTag.appendChild(ulTag);
  // Make the Gandalf text node have a grey background
  var gandalfTag = document.getElementsByClassName("buddy")[0];
  gandalfTag.style.backgroundColor = "gray";
}

makeBuddies(buddies);

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var getHobbits = document.getElementsByClassName("hobbits")[0]
  var rivendellTag = document.getElementsByTagName('article')[1]
  rivendellTag.appendChild(getHobbits)
}

leaveTheShire();

// access shire: document.getElementById("middle-earth").childNodes[0].childNodes[0]

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var changeBuddy = document.body.getElementsByClassName("buddy")[3].textContent = "Aragorn"
}

beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  var getBuddies = document.getElementsByClassName('buddies')[0]
  var rivendellTag = document.getElementsByTagName('article')[1]
  rivendellTag.appendChild(getBuddies)
  // create a new div called 'the-fellowship'
  var divTag = document.createElement('div');
  divTag.id = "the-fellowship";
  var articleTag = document.getElementById("middle-earth").childNodes[1]
  articleTag.appendChild(divTag);
  // for (i = 0; i < )
  // articleTag.appendChild(i)
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party

}

forgeTheFellowShip();

