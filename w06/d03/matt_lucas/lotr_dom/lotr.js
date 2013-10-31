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

// 1

// create a section tag with an id of middle-earth
// add each land as an article tag
// inside each article tag include an h1 with the name of the land
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

function makeHobbits(hobbits) {
  var weepeeps = document.createElement('ul');
  for (var i = 0; i < hobbits.length; i++) {
    var liTag = document.createElement('li');
    liTag.className = "hobbit";
    liTag.textContent = hobbits[i];
    weepeeps.appendChild(liTag)
  };
  var shire = document.getElementsByTagName('article')[0];
  shire.appendChild(weepeeps);
}

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var oneRing = document.createElement('div');
  oneRing.id = "the ring";
  // find frodo
  var frodo = document.getElementsByClassName("hobbit")[0];
  // add the ring as a child of Frodo
  frodo.appendChild(oneRing);
}

function makeBaddies(baddies) {
  var badGuys = document.createElement('ul');
    for (var i = 0; i < baddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.className = "baddies";
    liTag.textContent = baddies[i];
    badGuys.appendChild(liTag)
  };
  var enemies = document.getElementsByTagName('article')[2];
  enemies.appendChild(badGuys);
}

function makeBuddies(buddies) {
  // create an aside tag
  var buds = document.createElement('aside');
  // display an unordered list of buddies in the aside
 for (var i = 0; i < buddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.className = "buddies";
    liTag.textContent = buddies[i];
    buds.appendChild(liTag)
  // Make the Gandalf text node have a grey background
};
  document.body.appendChild(buds);
  var gandalf = document.getElementsByTagName('aside')[0].children[0];
  gandalf.style.backgroundColor = 'grey';
}

function leaveTheShire() {
  var shire = document.getElementsByTagName('ul')[0];
  var rivendell = document.getElementsByTagName('article')[1];
  rivendell.appendChild(shire);
}

function beautifulStranger() {
  var strider = document.body.getElementsByTagName("li")[11];
  strider.textContent = "Aragorn";
}

// function forgeTheFellowShip() {

//   // move the hobbits and the buddies to Rivendell
//   var buddies = document.body.getElementsByTagName("aside")[0].children;
//   var rivendell = document.body.getElementsByTagName("article")[1];
//   var buddyLength = buddies.length;

//   for (var i=0; i < buddyLength; i++){
//     var duder = buddies[0];
//     rivendell.children[1].appendChild(duder);
//   }
//   // create a new div called 'the-fellowship'
//   var fellowShip = document.createElement('div');
//   rivendell.appendChild(fellowShip);
//   var fellowUl = document.createElement('ul');
//   fellowShip.appendChild(fellowUl);

//   // calculate the fellows length
//   var numFellows = rivendell.children[1].children.length;

//   for (var i = 0; i < numFellows; i++){
//     // add each hobbit and buddy one at a time to 'the-fellowship'
//     var dude = rivendell.children[1].children[0];
//     fellowUl.appendChild(dude);

//     // after each character is added make an alert that they have joined your party
//     alert(dude.textContent + " has joined the party");
//   };
// }

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  var gandalf = document.body.getElementsByTagName("li")[4];
  gandalf.style.background='white';
  // gandalf.style.border = 'grey, solid, 1px';
  // apply style to the element
  gandalf.style.border="grey 1px solid";  // make the background 'white', add a grey border
}

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  alert("the horn of Gondor has been blown!")
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}

makeMiddleEarth(lands);

makeHobbits(hobbits);

keepItSecretKeepItSafe();

makeBaddies(baddies);

makeBuddies(buddies);

leaveTheShire();

beautifulStranger();

// forgeTheFellowShip();

theBalrog();

hornOfGondor();