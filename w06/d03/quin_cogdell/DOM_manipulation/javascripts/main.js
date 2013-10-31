// https://github.com/ga-students/WDI_NYC_Hash/blob/master/week_06/js/dom/lotr.md

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

lands = ["The Shire", "Rivendell", "Mordor"];

// #1
function makeMiddleEarth(lands) {
    var middleEarth = document.createElement('section');
    middleEarth.id = "middle-earth";
    for (var i = 0; i < lands.length; i++) {
      var articleTag = document.createElement("article");
      var h1Tag = document.createElement('h1');
      h1Tag.textContent = lands[i];
      articleTag.className = "location " + lands[i].replace(" ", "_").toLowerCase();
      articleTag.appendChild(h1Tag);
      middleEarth.appendChild(articleTag);
    }
    document.body.appendChild(middleEarth);
}

// #2
function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  var shireTag = document.getElementsByTagName('article')[0]
  var hobbitsTag = document.createElement('ul');
  hobbitsTag.className = "hobbits"

  for (i = 0; i < hobbits.length; i++) {
    var listItemTag = document.createElement('li');
    listItemTag.textContent = hobbits[i];
    listItemTag.className = 'hobbit';
    hobbitsTag.appendChild(listItemTag);
  }
  shireTag.appendChild(hobbitsTag);
}

// #3
function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  var frotoTag = document.getElementsByTagName('li')[0];
  var ringTag = document.createElement('div');
  ringTag.id = 'ring';
  ringTag.textContent = "secret is safe";
  frotoTag.appendChild(ringTag);
}

// #4
function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var mordorTag = document.getElementsByTagName('article')[2];
  var baddiesTag = document.createElement('ul');
  for (i = 0; i < baddies.length; i++) {
    var listItemTag = document.createElement('li');
    listItemTag.textContent = baddies[i];
    baddiesTag.appendChild(listItemTag);
  }
  mordorTag.appendChild(baddiesTag);
}

// 5
function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
  var asideTag = document.createElement('aside');
  var buddiesTag = document.createElement('ul');

  for (i = 0; i < buddies.length; i++) {
    var listItemTag = document.createElement('li');
    listItemTag.textContent = buddies[i];
    buddiesTag.appendChild(listItemTag);
  }
  buddiesTag.className = "buddies";
  var gandalfTag = buddiesTag.children[0]
  gandalfTag.style.background = "grey";
  asideTag.appendChild(buddiesTag);
  document.body.appendChild(asideTag);
}

//6
function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  //var hobbits = document.getElementsByClassName('hobbit');
  var rivendellTag = document.getElementsByClassName('Rivendell');
  var shireTag = document.getElementsByClassName('the_shire');



  // for (var i = 0; i < hobbits.length; i++) {
  //   var hobbitsTag
  // }

}








//7
function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
}


// 8
function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}

// 9
function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}

// 10
function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}


// 11
function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}

// 12
function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}


// 13
function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}




makeMiddleEarth(lands);
makeHobbits(hobbits);
keepItSecretKeepItSafe();
makeBaddies(baddies);
makeBuddies(buddies);
