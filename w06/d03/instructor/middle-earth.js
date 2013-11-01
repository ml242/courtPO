// Dramatis Personae
var hobbits = [
  "Frodo Baggins",
  "Samwise \"Sam\" Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin \"Pippin\" Took"
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

// these are the variables that I'm going to use
// over and over again throughout all functions
var i, mordor, shire, rivendell, frodo;

function findByClass(className) {
  return document.getElementsByClassName(className);
}

function makeMiddleEarth(lands) {
  // create a section tag with an id of middle-earth
  var sectionTag = document.createElement("section");
  sectionTag.id = "middle-earth";

  // add each land as an article tag
  // inside each article tag include an h1 with the name of the land
  for (i = 0; i < lands.length; i++) {
    // create each article and give it an id
    var landEl = document.createElement("article");
    landEl.id = lands[i];

    // create each h1 and set its land name
    var landName = document.createElement("h1");
    landName.textContent = lands[i];

    // put the h1 inside the land article
    landEl.appendChild(landName);

    // add the article to the section
    sectionTag.appendChild(landEl);
  }
  // everything's been added to the section, but
  // the section isn't in the DOM yet, so let's
  // append it to the page body, finally.
  document.body.appendChild(sectionTag);

  // now that they exist, set land element variables
  // so they're available to other functions
  mordor = document.getElementById("Mordor");
  shire = document.getElementById("The Shire");
  rivendell = document.getElementById("Rivendell");
}

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  // grab the shire article
  // create one new ul element to hold all hobbits
  var listEl = document.createElement("ul");
  listEl.id = "hobbitsList";
  for (i = 0; i < hobbits.length; i++) {
    // create an li tag for each hobbit
    var hobbitEl = document.createElement("li");
    hobbitEl.className = "hobbit";
    hobbitEl.textContent = hobbits[i];
    // add an id to keep tabs on frodo
    if (hobbits[i] === "Frodo Baggins") {
      hobbitEl.id = "frodo";
    }
    // append new hobbit li to the ul element
    listEl.appendChild(hobbitEl);
  }
   // append the ul to the shire article
  shire.appendChild(listEl);
  frodo = document.getElementById("frodo");
}

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  var theRing = document.createElement("div");
  theRing.id = "the-ring";

  frodo.appendChild(theRing);
}

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var listEl = document.createElement("ul");
  listEl.id = "baddiesList";
  for (i = 0; i < baddies.length; i++) {
    // create an li tag for each baddy
    var baddyEl = document.createElement("li");
    baddyEl.className = "baddy";
    baddyEl.textContent = baddies[i];

    // append new baddy li to the ul element
    listEl.appendChild(baddyEl);
  }
  mordor.appendChild(listEl);
}

function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
  var aside = document.createElement("aside");
  var title = document.createElement("h1");
  title.textContent = "Buddies";
  aside.appendChild(title);

  var listEl = document.createElement("ul");
  listEl.id = "buddiesList";

  for (i = 0; i < buddies.length; i++) {
    var buddyEl = document.createElement("li");
    buddyEl.className = "buddy";
    buddyEl.textContent = buddies[i];
    if (buddies[i] === "Gandalf the Grey") {
      buddyEl.className = "buddy gandalf grey";
    }
    listEl.appendChild(buddyEl);
  }
  aside.appendChild(listEl);
  document.body.appendChild(aside);
}

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var hobbitList = document.getElementById("hobbitsList");

  // passing elements that already exist in the DOM
  // into the appendChild() function will move them
  // to the element that appendChild() is being called on.
  rivendell.appendChild(hobbitList);
}

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var buddies = document.getElementsByClassName("buddy");
  for (i = 0; i < buddies.length; i++) {
    if (buddies[i].textContent === "Strider")
      buddies[i].textContent = "Aragorn";
  }
}

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  var buddiesList = document.getElementById("buddiesList");
  var hobbitsList = document.getElementById("hobbitsList");
  rivendell.appendChild(buddiesList);
  rivendell.appendChild(hobbitsList);

  // create a new div called 'the-fellowship'

  var fellowshipEl = document.createElement("div");
  fellowshipEl.id = "the-fellowship";

  var title = document.createElement("h1");
  title.textContent = "The Fellowship";
  fellowshipEl.appendChild(title);

  // add each hobbit and buddy one at a time to 'the-fellowship'
  // we can just use a while loop, without
  // an iterator to pop off the first "buddy" li
  // for as long as there are still "buddies".
  while(buddiesList.children.length) {
    // after each character is added make an alert that they have joined your party
    // alert(buddiesList.children[0].textContent);
    fellowshipEl.appendChild(buddiesList.children[0]);
  }
  document.body.appendChild(fellowshipEl);
}

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  var gandalf = findByClass("gandalf")[0];
  gandalf.textContent = "Gandalf the White";
  // apply style to the element
  gandalf.className = "buddy gandalf white";
  // make the background 'white', add a grey border
}

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  alert("The Horn of Gondor has been blown!!");
  // Boromir's been killed by the Uruk-hai!

  var fellowship = document.getElementById("the-fellowship").children;
  for (i = 0; i < fellowship.length; i++) {
    if (fellowship[i].textContent === "Boromir") {
      // put a linethrough on boromir's name
      fellowship[i].className = "buddy dead";

      // Remove Boromir from the Fellowship
      // Put Boromir in the Footer
      var footer = document.createElement("footer");
      footer.appendChild(fellowship[i]);
      document.body.appendChild(footer);
    }
  }
  // Remove the Uruk-Hai from the Baddies on the page
  var baddiesList = document.getElementById("baddiesList");
  for (i = 0; i < baddiesList.children.length; i++) {
    if (baddiesList.children[i].textContent === "The Uruk-hai") {
      baddiesList.removeChild(baddiesList.children[i]);
    }
  }
}

function itsDangerousToGoAlone() {
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // frodo is already a global variable
  var sam = frodo.nextSibling;

  // they're not baddies so I'm going to put them in a new ul
  var hobbitLove = document.createElement("ul");
  hobbitLove.id = "hobbit-love";
  hobbitLove.appendChild(frodo);
  hobbitLove.appendChild(sam);

  // append the new ul
  mordor.appendChild(hobbitLove);
  // add a div with an id of 'mount-doom' to Mordor
  var doom = document.createElement("div");
  doom.id = "mount-doom";

  mordor.appendChild(doom);
}

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
  var gollum = document.createElement("div");
  gollum.id = "gollum";
  gollum.textContent = "Gollum";

  var theRing = document.getElementById("the-ring");
  gollum.appendChild(theRing);

  document.getElementById("mount-doom").appendChild(gollum);
}

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
  var gollum = document.getElementById("gollum");
  gollum.parentElement.removeChild(gollum);

  var baddiesList = document.getElementById("baddiesList");
  baddiesList.parentElement.removeChild(baddiesList);

  var hobbits = findByClass("hobbit");
  for (i = 0; i < hobbits.length; i++) {
    shire.appendChild(hobbits[i]);
  }

}
debugger;
makeMiddleEarth(lands);
makeHobbits(hobbits);
keepItSecretKeepItSafe();
makeBaddies(baddies);
makeBuddies(buddies);
leaveTheShire();
beautifulStranger();
forgeTheFellowShip();
theBalrog();
hornOfGondor();
itsDangerousToGoAlone();
weWantsIt();
thereAndBackAgain();