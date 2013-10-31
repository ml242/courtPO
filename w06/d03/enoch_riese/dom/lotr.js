var lands = ["The Shire", "Rivendell", "Mordor"];
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
function makeMiddleEarth(lands) {
  var middleEarth = document.createElement('section');
  middleEarth.id = "middle-earth";
  for (var i = 0; i < lands.length; i++) {
    var articleTag = document.createElement('article');
    var h1Tag = document.createElement('h1');
    h1Tag.textContent = lands[i];
    articleTag.id = lands[i]
    articleTag.appendChild(h1Tag);
    middleEarth.appendChild(articleTag);
  }
  document.body.appendChild(middleEarth);
}
function makeHobbits(hobbits) {
  var ultag = document.createElement("ul");
  ultag.id = "hobbits"
  for (var i = hobbits.length - 1; i >= 0; i--) {
    var litag = document.createElement("li");
    litag.textContent = hobbits[i];
    litag.id = hobbits[i];
    ultag.appendChild(litag);
  };
  document.getElementById("The Shire").appendChild(ultag);
}
function keepItSecretKeepItSafe() {
  var ring = document.createElement("div")
  ring.id = "the-ring"
  document.getElementById("Frodo Baggins").appendChild(ring);
}
function makeBaddies(baddies) {
  var ultag = document.createElement("ul");
  ultag.id = "baddies"
  for (var i = baddies.length - 1; i >= 0; i--) {
    var litag = document.createElement("li");
    litag.textContent = baddies[i];
    litag.id = baddies[i];
    ultag.appendChild(litag);
  };
  document.getElementById("Mordor").appendChild(ultag);
}
function makeBuddies(buddies) {
  var asidetag = document.createElement("aside");
  var ultag = document.createElement("ul");
  ultag.id = "buddies"
  for (var i = buddies.length - 1; i >= 0; i--) {
    var litag = document.createElement("li");
    litag.textContent = buddies[i];
    litag.id = buddies[i];
    ultag.appendChild(litag);
  };
  asidetag.appendChild(ultag);
  document.body.appendChild(asidetag);
  document.getElementById("Gandalf the Grey").style.background = "grey";
}
function leaveTheShire() {
  var hobbits = document.getElementById("hobbits");
  document.getElementById("Rivendell").appendChild(hobbits);
}
function beautifulStranger() {
  var aragorn = document.getElementById("Strider");
  aragorn.textContent = "Aragorn";
}
function forgeTheFellowShip() {
  var riv = document.getElementById("Rivendell");
  var ultagR = document.createElement("ul");
  riv.appendChild(ultagR);
  var hobbits = document.getElementById("hobbits").children;
  var buddies = document.getElementById("buddies").children;
  for (var i = hobbits.length - 1; i >= 0; i--) {
    ultagR.appendChild(hobbits[i]);
  };
  for (var i = buddies.length - 1; i >= 0; i--) {
    ultagR.appendChild(buddies[i]);
  };
  var divtag = document.createElement("div");
  divtag.id = "the-fellowship";
  divtag.textContent = "The Fellowship"
  var ultagF = document.createElement("ul");
  divtag.appendChild(ultagF);
  document.body.appendChild(divtag);
  var fellowship = ultagR.children
  for (var i = fellowship.length - 1; i >= 0; i--) {
    var name = fellowship[i].textContent;
    ultagF.appendChild(fellowship[i]);
    alert(name + " has joined the fellowship!");
  };
}
function theBalrog() {
  var gandalf = document.getElementById("Gandalf the Grey");
  gandalf.textContent = "Gandalf the White"
  gandalf.style.background = "white";
  gandalf.style.border = "1px solid grey";
}
function hornOfGondor() {
  alert("The horn of Gondor has been blown! Boromir's been killed by the Uruk-hai!");
  var boromir = document.getElementById("Boromir")
  var delTag = document.createElement("del");
  delTag.appendChild(boromir);
  var footertag = document.createElement("footer");
  footertag.appendChild(delTag);
  document.body.appendChild(footertag);
  document.getElementById("baddies").removeChild(document.getElementById("The Uruk-hai"));
}
function itsDangerousToGoAlone(){
  var ultag = document.createElement("ul");
  var frodo = document.getElementById("Frodo Baggins");
  var sam = document.getElementById("Samwise 'Sam' Gamgee");
  var mordor = document.getElementById("Mordor");
  ultag.appendChild(frodo);
  ultag.appendChild(sam);
  mordor.appendChild(ultag);
  var divtag = document.createElement("div");
  divtag.textContent = "Mount Doom"
  divtag.id = "mount-doom";
  mordor.appendChild(divtag);
}
function weWantsIt() {
  var gollum = document.createElement("div");
  gollum.id = "gollum";
  gollum.textContent = "Gollum";
  document.getElementById("Mordor").appendChild(gollum);
  ring = document.getElementById("the-ring");
  gollum.appendChild(ring);
  alert("Gollum stole the ring!");
  document.getElementById("mount-doom").appendChild(gollum);
}
function thereAndBackAgain() {
  document.getElementById("gollum").remove();
  document.getElementById("baddies").remove();
  document.getElementById("The Shire").appendChild(document.getElementById("Mordor").children[1]);
}
makeMiddleEarth(lands);
makeHobbits(hobbits);
keepItSecretKeepItSafe();
makeBaddies(baddies);
makeBuddies(buddies);
