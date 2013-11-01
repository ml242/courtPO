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


var hobbits = [
  "Frodo Baggins",
  "Samwise 'Sam' Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin 'Pippin' Took"
];

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var ulTag = document.createElement('ul');
  for (var i = 0; i < hobbits.length; i++) {
    var liTag = document.createElement('li');
    liTag.className = "hobbit";
    liTag.textContent = hobbits[i];
    ulTag.appendChild(liTag);
  }
    document.body.getElementsByTagName('h1')[0].appendChild(ulTag);

  // give each hobbit a class of hobbit
}


function keepItSecretKeepItSafe() {
  // ceate a div with an id of 'the-ring'
  var divTag = document.createElement('div');
  divTag.id = "the-ring";
  divTag.textContent = "The Ring";
  // add the ring as a child of Frodo
  document.body.getElementsByClassName('hobbit')[0].appendChild(divTag);
}

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
  document.body.getElementsByTagName('h1')[2].appendChild(ulTag);
}

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
  var ulTag = document.createElement('ul');
  asideTag.appendChild(ulTag);
  // display an unordered list of buddies in the aside
  for (var i = 0; i < buddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.className = "buddies";
    liTag.textContent = buddies[i];
    ulTag.appendChild(liTag);
  }
  // Make the Gandalf text node have a grey background
  document.body.appendChild(asideTag);
  var grey = document.getElementsByClassName('buddies')[0];
  grey.style.backgroundColor = "grey";
}


function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var hobbitsList = document.body.getElementsByTagName('ul')[0];
  var riv = document.body.getElementsByTagName('h1')[1]
  var shire = document.body.getElementsByTagName('h1')[0]

  shire.removeChild(hobbitsList);
  riv.appendChild(hobbitsList);
}

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var strider = document.body.getElementsByClassName('buddies')[3]
  strider.textContent = "Aragon";
}

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  var buddies = document.getElementsByTagName('ul')[2];
  var riv = document.getElementsByTagName('h1')[1]
  var aside = document.getElementsByTagName('aside')[0]

  aside.removeChild(buddies);
  riv.appendChild(buddies);
  // create a new div called 'the-fellowship'
  var divTag = document.createElement('div');
  divTag.className = "the-fellowship";
  var ulTag = document.createElement('ul');
  ulTag.className = "fellows"
  divTag.appendChild(ulTag);
  document.body.appendChild(divTag);
  var fellows = document.getElementsByClassName('fellows');
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
  var rivList = riv.getElementsByTagName('li');
  for (var i = 0; i < rivList.length; i++) {
    // ulTag.textContent = rivList[i];
    console.log(rivList[i]);
    fellows[0].appendChild(rivList[i]);
    alert(rivList[i] + " has joined the Fellowship party!");
  }
}


