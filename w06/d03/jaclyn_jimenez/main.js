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

//functions

// Ex 1
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
};

makeMiddleEarth(lands);

//Ex 2
function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var theShireH1 = document.getElementsByTagName('h1')[0]
  var unorderedHobbitsList = document.createElement('ul')
  for (var i = 0; i < hobbits.length; i++) {
    var liItem = document.createElement('li')
    // give each hobbit a class of hobbit
    liItem.className = 'hobbit'
    //adds text to list item
    liItem.textContent = hobbits[i]
    //appends this list item to the unordered list
    unorderedHobbitsList.appendChild(liItem)

  }
  //appends the unordered hobbits list under the Shire heading
  theShireH1.appendChild(unorderedHobbitsList)
}
makeHobbits(hobbits)

// Ex 3
function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var ringDiv = document.createElement('div')
  ringDiv.id = 'the-ring'
  // add the ring as a child of Frodo
  var frodoLi = document.getElementsByTagName('li')[0]
  frodoLi.appendChild(ringDiv)
}
keepItSecretKeepItSafe()

// Ex 4
function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var mordorH1 = document.getElementsByTagName('h1')[2]
  var unorderedBaddieList = document.createElement('ul')
  for (var i = 0; i < baddies.length; i++) {
    var liBad = document.createElement('li')
    liBad.textContent = baddies[i]
    unorderedBaddieList.appendChild(liBad)
  }
  mordorH1.appendChild(unorderedBaddieList)
}
makeBaddies(baddies)

//Ex 5
function makeBuddies(buddies) {
  // create an aside tag
  var budAside = document.createElement('aside')
  var unorderedBuddyList = document.createElement('ul')
  // display an unordered list of buddies in the aside
  for (i = 0; i < buddies.length; i++) {
    var budLi = document.createElement('li')
    budLi.textContent = buddies[i]
    unorderedBuddyList.appendChild(budLi)
  }
  budAside.appendChild(unorderedBuddyList)
  document.body.appendChild(budAside)
  document.getElementsByTagName('ul')[2].childNodes[0].style.backgroundColor = 'grey'
  // Make the Gandalf text node have a grey background
}
makeBuddies(buddies)

// Ex 6
function leaveTheShire() {
  var RivendellH1 = document.getElementsByTagName('h1')[1]
  var unorderedRivendellList = document.createElement('ul')
  RivendellH1.appendChild(unorderedRivendellList)
  //creates UL for rivendell
  // assemble the hobbits and move them to Rivendell
  var hobbitsToMove = document.getElementsByClassName('hobbit') //array containing the hobbits
  var newLocation = document.getElementsByTagName('ul')[1] //where we're moving them to
  var oldLocation = document.getElementsByTagName('ul')[0].childNodes
  for (var i = 0; i < hobbitsToMove.length; i++) {
    var thisHobbit = oldLocation[0]
    newLocation.appendChild(thisHobbit)
  }
}
leaveTheShire()

// Ex 7
function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  //select strider
  var striderLi = document.getElementsByTagName('aside')[0].children[0].getElementsByTagName('li')[3]
  //change .textContent to Aragorn
  striderLi.textContent = 'Aragorn'
}
beautifulStranger()

//Ex 8
function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell (same)
  var budArray = document.getElementsByTagName('ul')[3].getElementsByTagName('li')
  var oldLocation = document.getElementsByTagName('aside')[0].children[0].children //where they're coming from
  var newLocation = document.getElementsByTagName('ul')[1] //where we're moving them to
  var hobbits = document.getElementsByClassName('hobbit')
    // create a new div called 'the-fellowship'
  var theFellowship = document.createElement('div')
  while (hobbits.length > 0) {
    var thisHobbit = hobbits[0]
    // add each hobbit and buddy one at a time to 'the-fellowship'
    // after each character is added make an alert that they have joined your party
    theFellowship.appendChild(thisHobbit)
    alert(thisHobbit.textContent + " has joined your party!")
  }
    while (budArray.length > 0) {
    var thisHobbit = oldLocation[0]
    // add each hobbit and buddy one at a time to 'the-fellowship'
    // after each character is added make an alert that they have joined your party
    theFellowship.appendChild(thisHobbit)
    alert(thisHobbit.textContent + " has joined your party!")
  }
  newLocation.appendChild(theFellowship)
}
forgeTheFellowShip()

//Ex 9
function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  var Gandalf = document.getElementsByTagName('ul')[1].children[0].children[4]
  Gandalf.textContent = 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
  Gandalf.style.backgroundColor = 'white'
  Gandalf.style.borderColor = 'grey' //doesnt seem to work
}
theBalrog()

//Ex 10
function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  alert("The Horn of Gondor has Been Blown!")
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  boromirLi = document.getElementsByTagName('ul')[1].children[0].children[8] //couldnt get lastChild to work
  //UNFINISHED

  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}

//Ex 11

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}

//Ex 12
function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}

//Ex 13
function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}
