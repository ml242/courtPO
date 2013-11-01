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
console.log("create a section tag with id of middle-earth, add each land as an article tag");
console.log("inside each article tag include an h1 with the name of the land");
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
makeMiddleEarth(lands);

// 2
function makeHobbits(hobbits) {
  console.log("display an unordered list of hobbits in the shire, and give each a class of hobbit");
  artTags = document.getElementsByTagName('article');
  var ulTag = document.createElement('ul');
  for (var i = 0; i < hobbits.length; i++) {
    var liTag = document.createElement('li');
    liTag.textContent = hobbits[i];
    ulTag.appendChild(liTag);
  }
  artTags[0].appendChild(ulTag);
}
 makeHobbits(hobbits);

// 3
function keepItSecretKeepItSafe() {
  console.log("create a div with an id of 'the-ring', and add the ring as a child of Frodo");
  var ringDiv = document.createElement('div');
  ringDiv.id = "the-ring";
  liTags = document.getElementsByTagName('li');
  liTags[0].appendChild(ringDiv);
}
keepItSecretKeepItSafe();

// 4
function makeBaddies(baddies) {
  console.log("display an unordered list of baddies in Mordor");
  artTags = document.getElementsByTagName('article')
  ulTag = document.createElement('ul');
  for (var i = 0; i < baddies.length; i++){
    liTag = document.createElement('li');
    liTag.textContent = baddies[i];
    ulTag.appendChild(liTag);
  }
  artTags[2].appendChild(ulTag);
}
makeBaddies(baddies);
// 5
function makeBuddies(buddies) {
  console.log("create an aside tag, and display an unordered list of buddies");
  console.log("Make the Gandalf text node have a grey background");
  asideTag = document.createElement('aside');
  ulTag = document.createElement('ul');
  for (var i = 0; i < buddies.length; i++) {
    liTag = document.createElement('li');
    liTag.textContent = buddies[i];
    if (buddies[i] == "Gandalf the Grey") {
      liTag.style.color = 'grey';
    }
    ulTag.appendChild(liTag);
  }
  asideTag.appendChild(ulTag);
  document.body.appendChild(asideTag);
}
makeBuddies(buddies);
// 6
function leaveTheShire() {
  console.log("assemble the hobbits and move them to Rivendell");
  hobbs = document.body.getElementsByTagName('ul')[0]; //.children;
  rivenArt = document.body.getElementsByTagName('article')[1];
  rivenArt.appendChild(hobbs);

}
leaveTheShire();
// 7
function beautifulStranger() {
  console.log("change the buddy 'Strider' textnode to 'Aragorn'");
  document.body.getElementsByTagName('aside')[0].children[0].children[3].textContent = "Aragorn";
}
beautifulStranger();
// 8
function forgeTheFellowShip() {
  console.log("move the hobbits and the buddies to Rivendell");
  buddyAside = document.body.getElementsByTagName('aside')[0];
  rivenArt = document.body.getElementsByTagName('article')[1];
  rivenArt.appendChild(buddyAside);
  console.log("create a new div called 'the-fellowship'");
  fellowDiv = document.createElement('div');
  fellowDiv.id = "the-fellowship";
  ulForge = document.createElement('ul');
  hobbs = document.body.getElementsByTagName('ul')[0].children;
  buds = document.body.getElementsByTagName('ul')[1].children;
  console.log("adding each hobbit and buddy one at a time to 'the-fellowship'");
  // after each character is added make an alert that they have joined your party
  for (i = 0; i < (hobbits.length); i++) {
    console.log(hobbs[0].textContent + " joined the fellowship(removed alerts)");
    //alert(hobbs[0].textContent + " joined the fellowship")
    ulForge.appendChild(hobbs[0]);
    fellowDiv.appendChild(ulForge);
  }
  for (i = 0; i < (buddies.length); i++) {
    console.log(buds[0].textContent + " joined the fellowship(removed alerts)");
    //alert(buds[0].textContent + " joined the fellowship")
    ulForge.appendChild(buds[0]);
    fellowDiv.appendChild(ulForge);
  }
    document.body.getElementsByTagName('ul')[0].remove();
    document.body.getElementsByTagName('ul')[0].remove();
    document.body.getElementsByTagName('aside')[0].remove();
    document.body.getElementsByTagName('article')[1].appendChild(fellowDiv);
}
forgeTheFellowShip();
// // 9
function theBalrog() {
  console.log("change the 'Gandalf' textNode to 'Gandalf the White'");
  gandolf = document.body.getElementsByTagName('ul')[0].children[4]
  gandolf.textContent = "Gandolf the White"
  console.log("apply style to the element(changed font)");
  gandolf.style.fontFamily = "monospace"
  console.log("make the background 'white', add a grey border");
  document.body.style.backgroundColor = "#FFF"
  document.body.style.border = "50px solid grey";
}
theBalrog()
// // 10
function hornOfGondor() {
  console.log("pop up an alert that the horn of gondor has been blown(removed alert)");
  //alert('THE HORN OF GONDOR HAS BEEN BLOWN...')
  console.log("Boromir's been killed by the Uruk-hai!");
  console.log("put a linethrough on boromir's name");
  boromir = document.body.getElementsByTagName('ul')[0].children[8];
  boromir.style.textDecoration = "line-through";
  console.log("Remove the Uruk-Hai from the Baddies on the page");
  document.body.getElementsByTagName('ul')[1].children[2].remove();
  console.log("Remove Boromir from the Fellowship");
  console.log("Put Boromir in the Footer");
  footer = document.createElement('footer');
  footer.appendChild(boromir);
  document.body.appendChild(footer);
}
hornOfGondor();
// // 11
function itsDangerousToGoAlone(){
  console.log("take Frodo and Sam out of the fellowship and move them to Mordor");
  frodo = document.body.getElementsByTagName('li')[0];
  samw = document.body.getElementsByTagName('li')[0];
  document.body.getElementsByTagName('ul')[1].appendChild(frodo);
  document.body.getElementsByTagName('ul')[1].appendChild(samw);
  console.log("add a div with an id of 'mount-doom' to Mordor");
  mtDoom = document.createElement('div');
  mtDoom.id = 'mount-doom';
  mordor = document.getElementsByTagName('h1')[2];
  mordor.appendChild(mtDoom);
}
itsDangerousToGoAlone();
// 12
function weWantsIt() {
  console.log("Create a div with an id of 'gollum' and add it to Mordor");
  gollumDiv = document.createElement('div');
  gollumDiv.id = "gollum";
  mordor = document.getElementsByTagName('h1')[2];
  mordor.appendChild(gollumDiv);
  console.log("Remove the ring from Frodo and give it to Gollum");
  theRing = document.getElementById('the-ring');
  gollumDiv.appendChild(theRing);
  console.log("Move Gollum into Mount Doom");
  mtDoom = document.getElementById('mount-doom');
  mtDoom.appendChild(gollumDiv);

}
weWantsIt();
// 13
function thereAndBackAgain() {
  console.log("remove Gollum and the Ring from the document");
  document.getElementById("gollum").remove();
  console.log("remove all the baddies from the document(get frodo out 1st!)");
  frodo = document.getElementsByTagName('li')[10];
  document.getElementsByTagName("ul")[1].remove();
  console.log("Move all the hobbits back to the shire");
  samw = document.getElementsByTagName('li')[0];
  mery = document.getElementsByTagName('li')[1];
  buck = document.getElementsByTagName('li')[1];
  ulTag = document.createElement('ul');
  ulTag.appendChild(samw);
  ulTag.appendChild(mery);
  ulTag.appendChild(buck);
  ulTag.appendChild(frodo);
  shireArticle = document.getElementsByTagName('article')[0];
  shire.appendChild(shireArticle);
}
thereAndBackAgain();