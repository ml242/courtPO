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

(function makeMiddleEarth() {

    // create a section tag with an id of middle-earth
    var middleEarth = document.createElement('section');
    middleEarth.id = 'middle-earth';

    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    for (var i=0; i < lands.length; i++) {
      var articleTag = document.createElement('article'),
          h1Tag = document.createElement('h1');
      h1Tag.textContent = lands[i];
      articleTag.appendChild(h1Tag);
      middleEarth.appendChild(articleTag);
    }

    // send middleEarth to the document!
    document.body.appendChild(middleEarth);
})();

(function makeHobbits() {

  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  var unorderedList = document.createElement('ul');

  for (var i=0; i < hobbits.length; i++) {
    var listItem = document.createElement('li');
    listItem.textContent = hobbits[i];
    listItem.className = 'hobbit';
    unorderedList.appendChild(listItem);
  }

  // send the hobbits to the shire
  var theShire = document.getElementsByTagName('article')[0];
  theShire.appendChild(unorderedList);

})();

(function keepItSecretKeepItSafe() {

  // create a div with an id of 'the-ring'
  var divTag = document.createElement('div');
  divTag.id = 'the-ring';

  // add the ring as a child of Frodo
  var frodoBaggins = document.getElementsByClassName('hobbit')[0];
  frodoBaggins.appendChild(divTag);

})();

(function makeBaddies() {

  // display an unordered list of baddies in Mordor
  var unorderedList = document.createElement('ul');

  for (var i=0; i < baddies.length; i++) {
    var listItem = document.createElement('li');
    listItem.textContent = baddies[i];
    listItem.className = 'baddie';
    unorderedList.appendChild(listItem);
  }

  // send the baddies to mordor
  var mordor = document.getElementsByTagName('article')[2];
  mordor.appendChild(unorderedList);

})();

(function makeBuddies() {

  // create an aside tag
  var asideTag = document.createElement('aside');

  // display an unordered list of buddies in the aside
  var unorderedList = document.createElement('ul');

  for (var i=0; i < buddies.length; i++) {
    var listItem = document.createElement('li');
    listItem.textContent = buddies[i];
    listItem.className = 'buddy';
    unorderedList.appendChild(listItem);
  }

  var rivendell = document.getElementsByTagName('article')[1];
  rivendell.appendChild(unorderedList);

  // Make the Gandalf text node have a grey background
  var gandalf = document.getElementsByClassName('buddy')[0];
  gandalf.style.background = 'grey';
})();

(function leaveTheShire() {

  // assemble the hobbits and move them to Rivendell
  var theHobbits = document.getElementsByClassName('hobbit'),
      rivendell = document.getElementsByTagName('article')[1].children[1];

  for (var i=0; i < theHobbits.length; i++) {
    var hobbit = document.getElementsByTagName('article')[0].children[1].children[0];
    rivendell.appendChild(hobbit);
  }

})();

(function beautifulStranger() {

  // change the buddy 'Strider' textnode to "Aragorn"
  var strider = document.getElementsByClassName('buddy')[3];
  strider.textContent = 'Aragorn';

})();

(function forgeTheFellowShip() {

  // create a new div called 'the-fellowship'
  var divTag = document.createElement('div');
  divTag.id = 'the-fellowship';

  var unorderedList = document.createElement('ul');
  divTag.appendChild(unorderedList);

  var rivendellArticle = document.getElementsByTagName('article')[1];
  rivendellArticle.appendChild(divTag);

  // add each hobbit and buddy one at a time to 'the-fellowship'
  var rivendell = document.getElementsByTagName('article')[1].children[1].children;
  var numFellows = rivendell.length;

  for (var i=0; i < numFellows; i++) {
    var protectorOfTheRing = rivendell[0];
    unorderedList.appendChild(protectorOfTheRing);

    // after each character is added make an alert that they have joined your party
    alert(protectorOfTheRing.textContent + ' has just joined your party!')
  }


})();

(function theBalrog() {

  // change the 'Gandalf' textNode to 'Gandalf the White'
  var gandalf = document.getElementsByClassName('buddy')[0];
  gandalf.textContent = 'Gandalf the White';

  // apply style to the element
  // make the background 'white', add a grey border
  gandalf.style.background = 'white';
  gandalf.style.border = '1px solid grey';

})();

(function hornOfGondor() {

  // pop up an alert that the horn of gondor has been blown
  alert('The Horn of Gondor has been blown!');

  // Boromir's been killed by the Uruk-hai!
  alert('Boromir\'s been killed by the Uruk-hai!');

  // put a linethrough on boromir's name
  var boromir = document.getElementsByClassName('buddy')[4];
  boromir.style.textDecoration = 'line-through';

  // Remove the Uruk-Hai from the Baddies on the page
  var urukHai = document.getElementsByClassName('baddie')[2];
  urukHai.parentNode.removeChild(urukHai);

  // Remove Boromir from the Fellowship
  boromir.parentNode.removeChild(boromir);

  // Put Boromir in the Footer
  var footer = document.createElement('footer');
  document.body.appendChild(footer);

  footer.appendChild(boromir);

})();

(function itsDangerousToGoAlone(){

  // take Frodo and Sam out of the fellowship and move them to Mordor
  var frodo = document.getElementsByClassName('hobbit')[0];
  var sam = document.getElementsByClassName('hobbit')[1];

  var mordor = document.getElementsByTagName('article')[2].children[1];
  mordor.appendChild(frodo);
  mordor.appendChild(sam);

  // add a div with an id of 'mount-doom' to Mordor
  var divTag = document.createElement('div');
  divTag.id = 'mount-doom';
  var mordor = document.getElementsByTagName('article')[2];
  mordor.appendChild(divTag);
})();

(function weWantsIt() {

  // Create a div with an id of 'gollum' and add it to Mordor
  var divTag = document.createElement('div');
  divTag.id = 'gollum';
  var mordor = document.getElementsByTagName('article')[2];
  mordor.appendChild(divTag);

  // Remove the ring from Frodo and give it to Gollum
  var theRing = document.getElementsByClassName('hobbit')[2].children[0];
  divTag.appendChild(theRing);

  // Move Gollum into Mount Doom
  var mountDoom = document.getElementsByTagName('article')[2].children[2];
  mountDoom.appendChild(divTag);

})();

(function thereAndBackAgain() {

  // remove Gollum and the Ring from the document
  var gollum = document.getElementsByTagName('article')[2].children[2].children[0];
  gollum.parentNode.removeChild(gollum);

  // remove all the baddies from the document
  var baddies = document.getElementsByClassName('baddie'),
      baddieLength = baddies.length;

  for (var i=0; i < baddieLength; i++) {
    var badDude = baddies[0];
    badDude.parentNode.removeChild(badDude);
  }

  // Move all the hobbits back to the shire
  var theHobbits = document.getElementsByClassName('hobbit'),
      theShire = document.getElementsByTagName('article')[0].children[1];

  for (var i=0; i < theHobbits.length; i++) {
    var misterHobbit = theHobbits[i];
    theShire.appendChild(misterHobbit);
  }

})();
