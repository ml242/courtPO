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
  };
  document.body.appendChild(middleEarth);
}

var hobbitsList = ["Frodo Baggins", "Samwise 'Sam' Gamgee", "Meriadoc \"Merry\" Brandybuck", "Peregrin 'Pippin' Took"];

function makeHobbits(hobbitsList) {
  var hobbits = document.createElement('ul');
  for (var i = 0; i < hobbitsList.length; i++)  {
    var liTag = document.createElement('li');
    liTag.className = "hobbit";
    liTag.textContent = hobbitsList[i];
    hobbits.appendChild(liTag);
  }
  var shire = document.getElementsByTagName('h1')[0];
  shire.appendChild(hobbits);
}

function keepItSecretKeepItSafe() {
  var div = document.createElement('div');
  div.id = "the-ring";
  var frodo = document.getElementsByClassName('hobbit')[0];
  frodo.appendChild(div);
}

var baddies = ["Sauron", "Saruman", "The Uruk-hai", "Orcs"];

function makebaddies(baddies) {
  var list = document.createElement('ul');
  for (var i = 0; i < baddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = baddies[i];
    liTag.className = "baddies";
    list.appendChild(liTag);
  }
  document.body.appendChild(list);
}

var buddies = ["Gandalf the Grey", "Legolas", "Gimli", "Strider", "Boromir"];

function makeBuddies(buddies) {
  // create an aside tag
  var aside = document.createElement('aside');
  // display an unordered list of buddies in the aside
  var buddiesList = document.createElement('ul')
  for (var i = 0; i < buddies.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = buddies[i];
    buddiesList.appendChild(liTag);
  }
  aside.appendChild(buddiesList);
  document.body.appendChild(aside);
  // Make the Gandalf text node have a grey background
  var Gandalf = document.getElementsByTagName('li')[8];
  Gandalf.style.backgroundColor = "grey";
}

function leaveTheShire() {
  var shire = document.getElementsByTagName('ul')[0];
  var rivendell = document.getElementsByTagName('article')[1]
  rivendell.appendChild(shire);
}

function beautifulStranger() {
    // change the buddy 'Strider' textnode to "Aragorn"
    var strider = document.getElementsByTagName('aside')[0].children[3];
    strider.textContent = "Aragorn";
}

function forgeTheFellowship() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  var fellowship = document.createElement('div');
  var rivendell = document.getElementsByTagName('article')[1];
    rivendell.appendChild(fellowship);
  var hobbes = document.getElementsByTagName('ul')[0].children;
  var hLength = hobbes.length;
  for (var i = 0; i < hLength;i++){
    var hobbit = hobbes[0];
    fellowship.appendChild(hobbit);
    alert("" + hobbit.textContent + " has joined the fellowship");
  }
  var buds = document.getElementsByTagName('ul')[2].children;
  var bLength = buds.length;
  for (var i = 0; i < bLength;i++){
    var bud = buds[0];
    fellowship.appendChild(bud);
    alert("" + bud.textContent + " has joined the fellowship");
  }

}

function theBalrog() {
  var rivendell = document.getElementsByTagName('article')[1];
  var gand = rivendell.getElementsByTagName('li')[4]
  gand.textContent = "Gandalf the White";
  gand.style.backgroundColor = "white";
  gand.style.border = "solid grey";
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}

function hornOfGondor() {
  alert("THE HORN OF GONDOR HAS BEEN BLOWN!")
  var footer = document.createElement('footer')
  var rivendell = document.getElementsByTagName('article')[1];
  var boromir = rivendell.getElementsByTagName('li')[8]
  boromir.style.textDecoration = 'line-through';
  footer.appendChild(boromir);
  var removed = document.createElement('div');
  uruk = document.body.getElementsByTagName('li')[10];
  removed.appendChild(uruk);
  delete removed;
  document.body.appendChild(footer);
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}

function itsDangerousToGoAlone(){
  var frodo = document.getElementsByTagName('li')[0];
  var sam = document.getElementsByTagName('li')[1];
  var mordor = document.getElementsByTagName('article')[2];
  mordor.appendChild(frodo)
  mordor.appendChild(sam)
  var mtDoom = document.createElement('div')
  mtDoom.className = "mount-doom";
  mordor.appendChild(mtDoom)
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}

function weWantsIt() {
  var gollum = document.createElement('div');
  gollum.id = "gollum";
  var ring = document.getElementsByTagName('li')[6].children[0];
  gollum.appendChild(ring);
  var mtDoom = document.getElementsByClassName('mount-doom')[0];
  mtDoom.appendChild(gollum);
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}

function thereAndBackAgain() {
  var removed = document.createElement('div');
  var gollum = document.getElementById('gollum');
    removed.appendChild(gollum);
  var baddies = document.getElementsByClassName('baddies');
  var bLength = baddies.length;
  for (i = 0; i < bLength; i++) {
    var baddie = baddies[0];
     removed.appendChild(baddie);
  }
  var hobbits = document.getElementsByClassName("hobbit");
  var shireList = document.getElementsByTagName('article')[0].children[0].children[0];
  for (i=0; i < hobbits.length; i++) {
    var hobbit = hobbits[i];
     shireList.appendChild(hobbit);
  }
}

makeMiddleEarth(lands);
makeHobbits(hobbitsList);
keepItSecretKeepItSafe();
makebaddies(baddies);
makeBuddies(buddies)
forgeTheFellowship()
theBalrog()
hornOfGondor()
itsDangerousToGoAlone()
weWantsIt()
thereAndBackAgain()
