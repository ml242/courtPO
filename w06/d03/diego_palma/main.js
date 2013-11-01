var lands = ["The Shire", "Rivendell", "Mordor"];

(function makeMiddleEarth() {
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
})();

  // create a section tag with an id of middle-earth
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land

var hobbits = [
  "Frodo Baggins",
  "Samwise 'Sam' Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin 'Pippin' Took"
];


(function makeHobbits() {
  var ulTag = document.createElement('ul');
   for (var i = 0; i < hobbits.length; i++) {
    var liTag = document.createElement('li');
    liTag.className = "hobbit"; //
    liTag.textContent = hobbits[i];
    ulTag.appendChild(liTag);
   }
   document.body.getElementsByTagName('article')[1].appendChild(ulTag);
})();

  // display an unordered list of hobbits
  // give each hobbit a class of hobbit


(function keepItSecretKeepItSafe() {
  var divTag = document.createElement('div')
  divTag.id = "the-ring"
  divTag.textContent = "The Ring"
  document.getElementsByClassName('hobbit')[0].appendChild(divTag);
})();
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo


var baddies = [
  "Sauron",
  "Saruman",
  "The Uruk-hai",
  "Orcs"
];

(function makeBaddies() {
   var ulTag = document.createElement('ul');
   for (var i = 0; i < baddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.className = "baddies"; //
    liTag.textContent = baddies[i];
    ulTag.appendChild(liTag);
   }
   document.body.getElementsByTagName('article')[2].appendChild(ulTag);
})();


  // display an unordered list of baddies in Mordor

var buddies = [
  "Gandalf the Grey",
  "Legolas",
  "Gimli",
  "Strider",
  "Boromir"
];

(function makeBuddies() {
  var asideTag = document.createElement('aside');
  var ulTag = document.createElement('ul');
  asideTag.appendChild(ulTag);
    for (var i = 0; i < buddies.length; i++) {
      var liTag = document.createElement('li');
      liTag.className = "buddies";
      liTag.textContent = buddies[i];
      ulTag.appendChild(liTag);
    }
  document.body.appendChild(asideTag);
  var grey = document.getElementsByClassName('buddies')[0]
  grey.style.backgroundColor = "grey"
})();

(function leaveTheShire() {
  var hobbits = document.getElementsByTagName('ul')[0];
  var shire = document.getElementsByTagName('h1')[0];
  // shire.removeChild(hobbits);
  var rivendell = document.getElementsByTagName('article')[1];
  rivendell.appendChild(hobbits);
})();

  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background

(function beautifulStranger() {
  var strider = document.getElementsByClassName('buddies')[3]
  strider.textContent = "Aragon"
})();


(function forgeTheFellowShip() {
  var buddies = document.getElementsByTagName('ul')[2];
  var rivendell = document.getElementsByTagName('h1')[1];
  rivendell.appendChild(buddies);
  var divTag = document.createElement('div');
  divTag.id = "the-fellowship";
  rivendell.appendChild(divTag);

  var migration = rivendell.getElementsByTagName('ul')[0];
  var ulTag = document.createElement('ul');
  divTag.appendChild(ulTag);
  for (i=0; i < migration.length; i++) {
    var pilgrim = migration[0];
    ulTag.appendChild(pilgrim);
  }
})();


  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party


