var lands = ["The Shire", "Rivendell", "Mordor"];

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

// lands------------------------------------------------------------
// this is the "land making" function
function makeMiddleEarth(lands) {
  // this line creates a section that will contain the lands
  var middleEarth = document.createElement('section');
  // this line identifies the section with an id of middleEarth
  middleEarth.id = "middle-earth";
  // for loop iterates through the list of lands to create a land in an h1 tag that is within an article tag
  for (var i = 0; i < lands.length; i++ ) {
    var articleTag = document.createElement('article');
    var h1Tag = document.createElement('h1');
    // this line inputs the name of the land into the h1 tag
    h1Tag.textContent = lands[i];
    // each land is assigned an id with its name
    articleTag.id = lands[i];
    // the lands (h1) are appended to their own article tag
    articleTag.appendChild(h1Tag);
    // the article tag containing a land is appeded to middle the middle earth section created above
    middleEarth.appendChild(articleTag);
  }
  // middle earth is attached to the body of the page
  document.body.appendChild(middleEarth);
}
// runs the function
makeMiddleEarth(lands);

// HOBBITS------------------------------------------------------------

function makeHobbitsEarth(hobbits) {
  var theHobbits = document.createElement('ul');
  theHobbits.id = "the hobbits";
  for (var i = 0; i < hobbits.length; i++) {
    var listItem = document.createElement('li');
    listItem.class = "hobbit";
    listItem.textContent = hobbits[i];
    listItem.id = hobbits[i];
    theHobbits.appendChild(listItem);
  }
  var TheShire = document.getElementsByTagName('article')[0];
  TheShire.appendChild(theHobbits);
}

makeHobbitsEarth(hobbits);


// keep it secret keep it safe------------------------------------------

function keepItSecretKeepItSafe() {
  var ring = document.createElement('div');
  ring.id = "The One";
  var frodo = document.getElementsByTagName('li')[0];
  frodo.appendChild(ring);
}

keepItSecretKeepItSafe();


// BADDIES------------------------------------------------------------

function makeBadGuys(baddies) {
  var villians = document.createElement('ul');
  villians.id = "baddies";
  for (var i = 0; i < baddies.length; i++) {
    var listItem = document.createElement('li');
    listItem.class = "baddies";
    listItem.textContent = baddies[i];
    villians.appendChild(listItem);
  }
  var Mordor = document.getElementsByTagName('article')[2];
  Mordor.appendChild(villians);
}

makeBadGuys(baddies);

// FRIENDS------------------------------------------------------------

function makeBuddies(buddies) {
  var asideTag = document.createElement('aside');
  var friends = document.createElement('ul');
  friends.id = "fellowship";
  for (var i = 0; i < buddies.length; i++) {
    var listItem = document.createElement('li');
    listItem.textContent = buddies[i];
    listItem.id = buddies[i];
    friends.appendChild(listItem);
  }
  asideTag.appendChild(friends);
  document.body.appendChild(asideTag);
  var gandalf = document.getElementsByTagName('li')[8];
  gandalf.style.background = "rgba(150, 150, 150, 1)";
}

makeBuddies(buddies);

// #6 LEAVE THE SHIRE--------------------------------------------------

function leaveTheShire() {
  var rivendell = document.getElementById('Rivendell');
  rivendell.appendChild(document.getElementById('the hobbits'));
}

leaveTheShire();


// #7 beautifulStranger -----------------------------------------------
function beautifulStranger() {
  document.getElementsByTagName('aside')[0].firstChild.childNodes[3].textContent = "Aragorn";
}

beautifulStranger();


// #8 The Fellowship -----------------------------------------------
function forgeTheFellowShip() {
  var rivendell = document.getElementById('Rivendell');
  rivendell.appendChild(document.getElementById('fellowship'));
  var theFellowship = document.createElement('div');
  theFellowship.textContent = "The Fellowship";
  theFellowship.id = "theFellowship";
  while (fellowship.childNodes.length > 0) {
    var newMember = fellowship.childNodes[0];
    theFellowship.appendChild(newMember);
    alert(newMember.firstChild.value + " just joined the fellowship!");
  }
  var hobbits = document.getElementById("the hobbits").childNodes;
  while(hobbits.length > 0) {
    var addHobbit = hobbits[0];
    theFellowship.appendChild(addHobbit);
    alert("Someone just joined the fellowship!")
  }
  rivendell.appendChild(theFellowship);
}

forgeTheFellowShip();


// #9 Balrog -----------------------------------------------
function theBalrog() {
  var gandalf = document.getElementById('theFellowship').childNodes[1];
  gandalf.textContent = "Gandalf the White";
  gandalf.style.background = "rgba(255, 255, 255, 1)";
  gandalf.style.border = "2px solid rgba(150, 150, 150, 1)";
}

theBalrog();


// #10 Horn of Gondor -----------------------------------------------
function hornOfGondor() {
  alert("The Horn of Gondor has been blown!!!");
  Boromir.style.textDecoration = "line-through";
  var uhParent = document.getElementsByTagName("ul")[2];
  var urukHai = uhParent.childNodes[2];
  uhParent.removeChild(urukHai);
  var footer = document.createElement('footer')
  footer.appendChild(Boromir);
  document.body.appendChild(footer);
}

hornOfGondor();

// #11 Dangerous to go alone --------------------------------------
function itsDangerousToGoAlone() {
  Mordor.appendChild(document.getElementById("Frodo Baggins"));
  Mordor.appendChild(document.getElementById("Samwise 'Sam' Gamgee"));
  var mtDoom = document.createElement('div');
  mtDoom.textContent = "Mount Doom";
  mtDoom.id = "mount-doom";
  Mordor.appendChild(mtDoom);
}

itsDangerousToGoAlone();


// #12 We Wants It --------------------------------------
function weWantsIt() {
  var gollum = document.createElement('div');
  gollum.textContent = "Gollum";
  gollum.id = "Gollum";
  Mordor.appendChild(gollum);
  gollum.appendChild(document.getElementById("The One"));
  document.getElementById("mount-doom").appendChild(gollum);
}

weWantsIt();

// #13 thereAndBackAgain --------------------------------------
function thereAndBackAgain() {
  document.getElementById("mount-doom").removeChild(Gollum);
  Mordor.removeChild(Mordor.childNodes[1]);
  for(var i = 0; i < hobbits.length; i++) {
    var adventurousHobbit = hobbits[i];
    document.getElementById("The Shire").appendChild(document.getElementById(adventurousHobbit));
  }

}

thereAndBackAgain();

