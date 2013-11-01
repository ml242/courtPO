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
  var middleEarth = document.createElement('section');
  middleEarth.id = "middle-earth";
  for(i = 0; i < lands.length; i++) {
    var articleTag = document.createElement('article');
    var h1Tag = document.createElement('h1');
    h1Tag.textContent = lands[i];
    articleTag.appendChild(h1Tag);
    middleEarth.appendChild(articleTag);
    document.body.appendChild(middleEarth);
  }
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  var ul = document.createElement('ul');
  ul.id = 'hobbits';
  for(i = 0; i < hobbits.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = hobbits[i];
    liTag.class = "hobbit";
    ul.appendChild(liTag);
  }
  var middleEarth = document.getElementsByTagName('section')[0];
  var theShire = middleEarth.getElementsByTagName('article')[0];
  theShire.appendChild(ul);
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
}

makeHobbits(hobbits);


function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var divTag = document.createElement('div');
  divTag.id = "the-ring";
  // add the ring as a child of Frodo
  frodo = document.getElementsByTagName('li')[0];
  frodo.appendChild(divTag);
}

keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
    var ul = document.createElement('ul');
  for(i = 0; i < baddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = baddies[i];
    liTag.class = "baddie";
    ul.appendChild(liTag);
  }
  document.body.appendChild(ul);
}

makeBaddies(baddies);

function makeBuddies(buddies) {
  // create an aside tag
  var asideTag = document.createElement('aside');
  // display an unordered list of buddies in the aside
      var ul = document.createElement('ul');
      ul.id = 'friends';
  for(i = 0; i < buddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = buddies[i];
    liTag.class = "buddy";
    ul.appendChild(liTag);
  }
  asideTag.appendChild(ul);
  document.body.appendChild(asideTag);
  var gandalf = asideTag.getElementsByTagName('li')[0];
  gandalf.style.background = "grey";  // Make the Gandalf text node have a grey background
}

makeBuddies(buddies);

function leaveTheShire() {
  hobbits = document.getElementsByTagName('ul')[0];
  var rivendell = document.getElementsByTagName('article')[1];
  rivendell.appendChild(hobbits);
}

leaveTheShire();

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
 friends = document.getElementsByTagName('ul')[2];
 strider = friends.getElementsByTagName('li')[3];
 strider.textContent = "Aragorn";
}

beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  var rivendell = document.getElementsByTagName('article')[1];
  var friends = document.getElementsByTagName('ul')[2];
  rivendell.appendChild(friends);
  var theFellowship = document.createElement('div');
  theFellowship.id = 'the-fellowship';
  var everyLI = rivendell.getElementsByTagName('li');
  for(i = 0; i < everyLI.length; i++) {
    var newGuy = everyLI[i].cloneNode(true);
    theFellowship.appendChild(newGuy);
    // alert(newGuy.innerHTML + " joined the fellowship");
  }
  rivendell.appendChild(theFellowship);
  friends = document.getElementById('friends');
  rivendell.removeChild(friends);
  hobbs = document.getElementById('hobbits');
  rivendell.removeChild(hobbs);
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}

forgeTheFellowShip();

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  gandalf = document.getElementById('the-fellowship').getElementsByTagName('li')[4];
  gandalf.textContent = "Gandalf the White";
  gandalf.style.background = "white";
  gandalf.style.border = "2px solid grey";
  // apply style to the element
  // make the background 'white', add a grey border
}

theBalrog();

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // alert('the horn of gondor has been blown');
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
   boromir = document.getElementById('the-fellowship').getElementsByTagName('li')[8];
  boromir.style.textDecoration = "line-through";
  // Remove the Uruk-Hai from the Baddies on the page
  var bads = document.getElementsByTagName('ul')[0];
  var uruk = bads.getElementsByTagName('li')[2];
  bads.removeChild(uruk);
  // Remove Boromir from the Fellowship
  var theFellowship = document.getElementById('the-fellowship');
  theFellowship.removeChild(boromir);
  // Put Boromir in the Footer
  var footer = document.createElement('footer');
  footer.appendChild(boromir);
  document.body.appendChild(footer);
}

hornOfGondor();

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  theFellowship = document.getElementById('the-fellowship');
  var frodo = theFellowship.getElementsByTagName('li')[0];
  var sam = theFellowship.getElementsByTagName('li')[1];
  var mordor = document.createElement('div');
  mordor.id = 'mordor';
  var mountDoom = document.createElement('div');
  mountDoom.id = 'mount-doom';
  mordor.textContent = "mordor";
  mordor.appendChild(frodo);
  mordor.appendChild(sam);
  mordor.appendChild(mountDoom);
  document.body.appendChild(mordor);
  // add a div with an id of 'mount-doom' to Mordor
}

itsDangerousToGoAlone();

function weWantsIt() {
  var gollum = document.createElement('div');
  gollum.id = "gollum";
  gollum.textContent = "gollum";
  var mordor = document.getElementById('mordor');
  mordor.appendChild(gollum);
  var frodo = mordor.getElementsByTagName('li')[0];
  var theRing = frodo.getElementsByTagName('div')[0];
  gollum.appendChild(theRing);
  var mountDoom = mordor.getElementsByTagName('div')[0];
  mountDoom.textContent = "mount doom";
  mountDoom.appendChild(gollum);
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}

weWantsIt();

function thereAndBackAgain() {
  var mountDoom = document.getElementById('mount-doom');
  var mordor = document.getElementById('mordor');
  // remove Gollum and the Ring from the document
  var gollum = document.getElementById('gollum');
  mountDoom.removeChild(gollum);
  enemies = document.getElementsByTagName('ul')[0];
  document.body.removeChild(enemies);
  var frodo = mordor.getElementsByTagName('li')[0];
  var sam = mordor.getElementsByTagName('li')[1];
  var theFellowship = document.getElementById('the-fellowship');
  var meri = theFellowship.getElementsByTagName('li')[0];
  var theShire = document.getElementsByTagName('article')[0];
  var peregrin = theFellowship.getElementsByTagName('li')[1];
  theShire.appendChild(frodo);
  theShire.appendChild(sam);
  theShire.appendChild(meri);
  theShire.appendChild(peregrin);
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}

thereAndBackAgain();
