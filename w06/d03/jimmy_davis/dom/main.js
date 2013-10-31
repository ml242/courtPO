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
  theRing.id = "the-ring";
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


function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  var theFellowship = document.createElement('div');
  theFellowship.class = "the-fellowship";
  // add each hobbit and buddy one at a time to 'the-fellowship'
  for (var i = 0; i < hobbits.length; i++) {
    theFellowship.textContent = hobbits[i];
  }
  for (var i = 0; i < buddies.length; i++) {
    theFellowship.textContent = buddies[i];
  // after each character is added make an alert that they have joined your party
}


function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}


function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  var horn = alert("The horn of gondor has been blown!")
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}


function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}


function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  var gollum = document.createElement('div');
    gollum.id = "gollum";
  var mordor = document.getElementsByTagName('article')[2];
  mordor.appendChild(gollum);
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}


function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}
