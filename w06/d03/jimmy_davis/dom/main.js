// Dramatis Personae

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

var lands = ["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands) {
  // create a section tag with an id of middle-earth
  var middleEarth = document.createElement('section');
  middleEarth.id = "middle-earth"
  for (var i = 0; i < lands.length; i++) {
    // add each land as an article tag
    var articleTag = document.createElement('article');
    // inside each article tag include an h1 with the name of the land
    var h1Tag = document.createElement('h1');
    h1Tag.textContent = lands[i];
    articleTag.appendChild(h1Tag);
    middleEarth.appendChild(articleTag);
  }
  document.body.appendChild(middleEarth);
}


function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // document.body.appendChild(middleEarth)[0];
  var hobbitsInShire = document.createElement('ul');
  for (var i = 0; i < hobbits.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = hobbits[i];
    // give each hobbit a class of hobbit
    liTag.class = "hobbit";
    hobbitsInShire.appendChild(liTag);
  }
  var theShire = document.getElementsByTagName('article')[0];
  theShire.appendChild(hobbitsInShire);
}

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var theRing = document.createElement('div');
  theRing.id = "the-ring"
  // add the ring as a child of Frodo
  var FrodoRing = document.getElementsByTagName('li')[0];
  FrodoRing.appendChild(theRing);
}

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var baddiesInMordor = document.createElement('ul');
  for (var i = 0; i < baddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = baddies[i];
    baddiesInMordor.appendChild(liTag);
  }
  var mordor = document.getElementsByTagName('article')[2];
  mordor.appendChild(baddiesInMordor);
}

function makeBuddies(buddies) {
  // create an aside tag
  var buddiesAside = document.createElement('aside');
  // display an unordered list of buddies in the aside
  var ulTag = document.createElement('ul');
  for (var i = 0; i < buddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = buddies[i];
    ulTag.appendChild(liTag);
    buddiesAside.appendChild(ulTag);
  }
  document.body.appendChild(buddiesAside);
  // Make the Gandalf text node have a grey background
  var gandalfGrey = document.getElementsByTagName('aside')[0];
  gandalfGrey.style.background = "grey";
}
// got the whole aside grey, not only gandalf

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var hobbitsInShire = document.createElement('ul');
  for (var i = 0; i < hobbits.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = hobbits[i];
    liTag.class = "hobbit";
    hobbitsInShire.appendChild(liTag);
  }
  var toRivendell = document.getElementsByTagName('article')[1];
  toRivendell.appendChild(hobbitsInShire);
}
// this above adds the hobbits to Rivendell
// but doesn't remove them from The Shire

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  // 'Strider' is at index 3 of buddies array

}
