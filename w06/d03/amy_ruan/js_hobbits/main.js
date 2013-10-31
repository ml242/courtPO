var lands = ["The Shire", "Rivendell","Mordor"];
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
  for(var i=0; i<lands.length;i++) {
    var articleTag = document.createElement('article');
    var h1Tag = document.createElement('h1');
    h1Tag.textContent = lands[i];
    articleTag.appendChild(h1Tag);
    middleEarth.appendChild(articleTag);
  }
  document.body.appendChild(middleEarth);
}


function makeHobbits(hobbits) {
 var hobbits_sec = document.getElementsByTagName('h1')[0];
 var ulTag = document.createElement('ul');
 for (var i=0; i<hobbits.length; i++) {
  var liTag = document.createElement('li');
  liTag.className = "hobbits";
  liTag.textContent = hobbits[i];
  ulTag.appendChild(liTag);
 }
hobbits_sec.appendChild(ulTag);
 document.body.appendChild(hobbits_sec);
}


function keepItSecretKeepItSafe() {
  var secret = document.createElement('div')
  secret.id = 'the-ring'
  a = document.getElementsByClassName("hobbits")[0]
  a.appendChild(secret)
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
}

function makeBaddies(baddies) {
 var baddies_sec = document.getElementsByTagName('h1')[1];
 var ulTag = document.createElement('ul');
 for (var i=0; i<baddies.length; i++) {
  var liTag = document.createElement('li');
  liTag.className = "baddies";
  liTag.textContent = baddies[i];
  ulTag.appendChild(liTag);
 }
  baddies_sec.appendChild(ulTag);
  document.body.appendChild(baddies_sec);
  // display an unordered list of baddies in Mordor
}

function makeBuddies(buddies) {
  var buddies_aside = document.createElement('aside');
  var ulTag = document.createElement('ul');
 for (var i=0; i<buddies.length; i++) {
  var liTag = document.createElement('li');
  liTag.className = "buddies";
  if (buddies[i] == "Gandalf the Grey") {
    liTag.textContent = buddies[i];
    liTag.style.display = "inline"
    liTag.style.backgroundColor = "Grey"
  } else {
    liTag.textContent = buddies[i];
  }
  ulTag.appendChild(liTag);
}
  buddies_aside.appendChild(ulTag);
  document.body.appendChild(buddies_aside);
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
}

function leaveTheShire() {
  var hobbits = document.getElementsByClassName('hobbits');
  var hobbits_parent = hobbits[0].parentNode;
  hobbits_parent.parentNode.removeChild(hobbits_parent);
  var new_hobbits_sec = document.getElementsByTagName('h1')[0];
  new_hobbits_sec.appendChild(hobbits_parent)
  // assemble the hobbits and move them to Rivendell
}

function beautifulStranger() {
  var buddies = document.getElementsByClassName('buddies');
  buddies[3].textContent = "Aragorn"
  // change the buddy 'Strider' textnode to "Aragorn"
}

function forgeTheFellowShip() {
  var buddies = document.getElementsByClassName('buddies');
  var hobbits = document.getElementsByClassName('hobbits');
  var buddies_parent = buddies[0].parentNode;
  buddies_parent.parentNode.removeChild(buddies_parent);
  var new_buddies_sec = document.getElementsByTagName('h1')[0];
  new_buddies_sec.appendChild(buddies_parent);
  var the_fellowship = document.createElement('div');
  // the_fellowship.className = "the_fellowship"
  for(var i = 0; i < buddies.length; i)
    {
      alert(buddies[i].textContent + "has joined the fellowship" )
      the_fellowship.appendChild(buddies[i])
        }
  for(var i = 0; i < hobbits.length; i)
    { alert(hobbits[i].textContent + "has joined the fellowship")
          the_fellowship.appendChild(hobbits[i])
        }
    new_buddies_sec.appendChild(the_fellowship);

  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}


function theBalrog() {
  var buddies = document.getElementsByClassName('buddies');
  buddies[0].textContent = "Gandalf the White"
  buddies[0].style.backgroundColor = "white"
  buddies[0].style.border = "5px solid grey"
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}

function hornOfGondor() {
  alert("The Horn of Gondor has been blown")
  alert("Boromir has been killed by the Uruk-hai")

  var buddies = document.getElementsByClassName('buddies');
  var buddies_parent = buddies[0].parentNode
  var borormir = buddies[4]
  // line through borormir
  borormir.style.textDecoration = "line-through";
  buddies_parent.removeChild(borormir);

  var footer = document.createElement('footer');
  footer.appendChild(borormir);
  document.body.appendChild(footer);

  var baddies = document.getElementsByClassName('baddies');
  var uruk_hai = baddies[2];
  var baddies_parents = baddies[0].parentNode;
  //removing uruk-hai from baddies
  baddies_parents.removeChild(uruk_hai);
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}


makeMiddleEarth(lands)
makeHobbits(hobbits)
keepItSecretKeepItSafe()
makeBaddies(baddies)
makeBuddies(buddies)
leaveTheShire()
beautifulStranger()
forgeTheFellowShip()
theBalrog()
hornOfGondor()