// Dramatis Personae

var hobbits = [
  "Frodo Baggins",
  "Samwise Gamgee",
  "Meriadoc Brandybuck",
  "Peregrin Took"
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
    // create a section tag with an id of middle-earth
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    var middleEarth = document.createElement('section');
    middleEarth.id = "middle-earth";

    for (var i = 0; i<lands.length; i++) {
      var articleTag = document.createElement('article');
      var h1Tag = document.createElement('h1');
      h1Tag.textContent = lands[i];
      articleTag.appendChild(h1Tag);
      middleEarth.appendChild(articleTag);
    }
    document.body.appendChild(middleEarth)
}

makeMiddleEarth(lands);

var middleEarth = document.getElementById('middle-earth');
var shire = middleEarth.children[0]

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  ulTag = document.createElement('ul');
  for (var i = 0; i < hobbits.length; i++) {
    var liTag = document.createElement('li');
    liTag.class ='hobbit';
    liTag.textContent=hobbits[i];
    ulTag.appendChild(liTag);
  }
  shire.appendChild(ulTag);
}

makeHobbits(hobbits);

//
var hobbitList=document.getElementsByTagName('li');
hobbitList[0].id = 'frodo';
frodo.id='frodo-baggins'
frodo = hobbitList[0];

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  var ring = document.createElement('div');
  ring.id = 'the-ring';
  frodo.appendChild(ring);
};
//

keepItSecretKeepItSafe();

var mordor = middleEarth.children[2];
function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var ulTag = document.createElement('ul');
  for (var i = 0; i < baddies.length; i++) {
    liTag = document.createElement('li');
    liTag.textContent = baddies[i];
    ulTag.appendChild(liTag);
  }
  mordor.appendChild(ulTag);
}

makeBaddies(baddies);

var rivendell = middleEarth.children[1];
function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
  var aside = document.createElement('aside');
  var ulTag = document.createElement('ul');
  for(var i=0; i < buddies.length; i++) {
    liTag= document.createElement('li');
    liTag.textContent=buddies[i];
    ulTag.appendChild(liTag);
  }
  rivendell.appendChild(ulTag);
}

makeBuddies(buddies);



// assemble the hobbits and move them to Rivendell
function leaveTheShire() {
var hobbitUnorderedList=document.getElementsByTagName("article")[0].children[1].children;
var numHobbits = hobbitUnorderedList.length;
for (var i=0; i < numHobbits; i++) {
  rivendell.children[1].appendChild(hobbitUnorderedList[0]);
  }
};

leaveTheShire();

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  strider = middleEarth.children[1].children[1].children[3];
  strider.textContent='Aragorn';
};

beautifulStranger();

var theFellowship = document.createElement('div');
theFellowship.id='the-fellowship';
middleEarth.appendChild(theFellowship);
var fellows = rivendell.children[1];
var fellowsNum = fellows.children.length;

function forgeTheFellowShip() {
  for (var i = 0; i < fellowsNum; i++) {
    theFellowship.appendChild(fellows.children[0])
    alert(theFellowship.children[i] + "has joined the fellowship");
  };
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
};

forgeTheFellowShip();

function theBalrog() {

  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
  var gandalf= theFellowship.children[0];
  gandalf.textContent='Gandalf the White';
  gandalf.setAttribute('style', 'background-color:white; border: 1px solid grey;')

}

theBalrog();

var footer = document.createElement('footer');
function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  alert('the horn of gondor has been blown!')
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  var boromir = theFellowship.children[4];
      boromir.setAttribute('style', 'text-decoration:line-through;');
  // Remove the Uruk-Hai from the Baddies on the page
  var urukHai=middleEarth.children[2].children[1].children[2];
      urukHai.parentNode.removeChild(urukHai);
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
  var h3Tag = document.createElement('h3');
      h3Tag.textContent='Footer/Graves';
  footer.appendChild(h3Tag);
  footer.appendChild(boromir);
  document.body.appendChild(footer);
}

hornOfGondor();

var mountDoom = document.createElement('div');
var sam = theFellowship.children[4];
sam.id='samwise-gamgee';
mountDoom.id='mount-doom';

function itsDangerousToGoAlone(){
  mordor.children[1].appendChild(frodo);
  mordor.children[1].appendChild(sam);
  mordor.appendChild(mountDoom);
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}

itsDangerousToGoAlone();

var ring = document.getElementById('the-ring');

function weWantsIt() {
  var gollum = document.createElement('div');
      gollum.id='gollum'
      mordor.appendChild(gollum);
      gollum.appendChild(ring);
      mountDoom.appendChild(gollum);
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}


weWantsIt();

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  mountDoom.removeChild(gollum);
  shire.children[1].appendChild(frodo);
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
  mordor.children[1].innerHTML='';
  shire.children[1].appendChild(theFellowship.children[4]);
  shire.children[1].appendChild(theFellowship.children[4]);
  shire.children[1].appendChild(theFellowship.children[4]);
}

thereAndBackAgain();


