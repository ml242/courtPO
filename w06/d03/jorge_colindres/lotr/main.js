var lands = ["The Shire", "Rivendell", "Mordor"];

var buddies = [
  "Gandalf the Grey",
  "Legolas",
  "Gimli",
  "Strider",
  "Boromir"
];

var hobbits = [
  "Frodo Baggins",
  "Samwise 'Sam' Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin 'Pippin' Took"
];

var baddies = [
  "Sauron",
  "Saruman",
  "The Uruk-hai",
  "Orcs"
];

function makeMiddleEarth(lands) {
    var middleEarth = document.createElement('section');
    middleEarth.id = 'middle-earth';
    // create a section tag with an id of middle-earth
    for (var i = 0; i < lands.length; i++) {
      var articleTag = document.createElement('article');
      var h1Tag = document.createElement('h1');
      h1Tag.textContent = lands[i];
      articleTag.appendChild(h1Tag);
      middleEarth.appendChild(articleTag);
    }
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    document.body.appendChild(middleEarth);
}
makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  var hobbitsList = document.createElement('ul');
  // display an unordered list of hobbits in the shire
  for (var i = 0; i < hobbits.length; i++) {
   var liTag = document.createElement('li');
   liTag.className = 'hobbit';
   liTag.textContent = hobbits[i];
   hobbitsList.appendChild(liTag);
  }
  // give each hobbit a class of hobbit
  var theShire = document.getElementsByTagName('article')[0];
  theShire.appendChild(hobbitsList);
}
makeHobbits(hobbits);


function keepItSecretKeepItSafe() {
  var theRing = document.createElement('div');
  theRing.id = 'the-ring';
  // create a div with an id of 'the-ring'
  var frodo = document.getElementsByTagName('li')[0];
  // add the ring as a child of Frodo
  frodo.appendChild(theRing);
}
keepItSecretKeepItSafe();


function makeBaddies(baddies) {
  var baddiesList = document.createElement('ul');
  // display an unordered list of baddies in Mordor
  for (var i = 0; i < baddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.className = 'baddie';
    liTag.textContent = baddies[i];
    baddiesList.appendChild(liTag);
  }
  var mordor = document.getElementsByTagName('article')[2];
  mordor.appendChild(baddiesList);
}
makeBaddies(baddies);

function makeBuddies(buddies) {
  var asideTag = document.createElement('aside');
  document.body.appendChild(asideTag);
  var buddiesList = document.createElement('ul');
  // create an aside tag
  for (var i = 0; i < buddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.className = 'buddy';
    liTag.textContent = buddies[i];
    buddiesList.appendChild(liTag);
  }
  asideTag.appendChild(buddiesList);
  // display an unordered list of buddies in the aside
  var gandalf = document.getElementsByClassName('buddy')[0];
  gandalf.id = 'gandalf';
  gandalf.style.background = 'grey';
  // Make the Gandalf text node have a grey background
}
makeBuddies(buddies);


function leaveTheShire() {
  var hobbitsList = document.getElementsByTagName('ul')[0];
  var rivendell = document.getElementsByTagName('article')[1];
  rivendell.appendChild(hobbitsList);
  // assemble the hobbits and move them to Rivendell
}
leaveTheShire();


function beautifulStranger() {
  var strider = document.getElementsByClassName('buddy')[3];
  strider.textContent = 'Aragorn';
  // change the buddy 'Strider' textnode to "Aragorn"
}
beautifulStranger();

function forgeTheFellowShip() {
  var hobbitsList = document.getElementsByTagName('ul')[0];
  var buddiesList = document.getElementsByTagName('ul')[2];
  var rivendell = document.getElementsByTagName('article')[1];
  rivendell.appendChild(hobbitsList);
  rivendell.appendChild(buddiesList);
  // move the hobbits and the buddies to Rivendell
  var theFellowship = document.createElement('div');
  theFellowship.id = 'the-fellowship';
  rivendell.appendChild(theFellowship);
  // create a new div called 'the-fellowship'
  var hobbits = hobbitsList.children;
  var buddies = buddiesList.children;
  for (var i = 0; i < hobbits.length; i++) {
    // debugger;
    theFellowship.appendChild(hobbits[0]);
  }
  for (var j = 0; j < buddies.length; j++) {
    theFellowship.appendChild(buddies[0]);
  }
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}
forgeTheFellowShip();


function theBalrog() {
  var gandalf = document.getElementsByClassName('buddy')[2];
  gandalf.textContent = 'Gandalf the White';
  // change the 'Gandalf' textNode to 'Gandalf the White'
  gandalf.style.background = 'white';
  gandalf.style.border = '1px solid grey';
  // apply style to the element
  // make the background 'white', add a grey border
}
theBalrog();

function hornOfGondor() {
  alert('The horn of gondor has been blown.');
  // pop up an alert that the horn of gondor has been blown
  alert('Boromir\'s been killed by the Uruk-hai!');
  // Boromir's been killed by the Uruk-hai!
  var boromir = document.getElementsByClassName('buddy')[1];
  // put a linethrough on boromir's name
  boromir.style.textDecoration = 'line-through';
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}
hornOfGondor();

function itsDangerousToGoAlone(){
  var frodo = document.getElementsByClassName('hobbit')[0];
  var sam = document.getElementsByClassName('hobbit')[1];
  var mordor = document.getElementsByTagName('article')[2];
  // take Frodo and Sam out of the fellowship and move them to Mordor
  mordor.appendChild(frodo);
  mordor.appendChild(sam);
  // add a div with an id of 'mount-doom' to Mordor
  var mountDoom = document.createElement('div');
  mountDoom.id = 'mount-doom';
  mordor.appendChild(mountDoom);
}
itsDangerousToGoAlone();


function weWantsIt() {
  var gollum = document.createElement('div');
  gollum.id = 'gollum';
  var mordor = document.getElementsByTagName('article')[2];
  mordor.appendChild(gollum);
  // Create a div with an id of 'gollum' and add it to Mordor
  var theRing = document.getElementById('the-ring');
  gollum.appendChild(theRing);
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
  var mountDoom = document.getElementById('mount-doom');
  mountDoom.appendChild(gollum);
}
weWantsIt();

function thereAndBackAgain() {
  var gollum = document.getElementById('gollum');
  var theRing = document.getElementById('the-ring');
  gollum.remove();
  theRing.remove();
  // remove Gollum and the Ring from the document
  var baddiesAll = document.getElementsByTagName('ul')[2];
  baddiesAll.remove();
  // remove all the baddies from the document
  var hobbitsAll = document.getElementsByClassName('hobbit');
  var theShire = document.getElementsByTagName('article')[0];
  for (var i = 0; i < hobbitsAll.length; i++) {
    theShire.appendChild(hobbitsAll[i]);
  }
  // Move all the hobbits back to the shire
}
thereAndBackAgain();
