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

var lands = ["The Shire", "Rivendell", "Mordor", "Dead People"];

function makeMiddleEarth(lands) {
  // create a section tag with an id of middle-earth
  // add each land as an article tag
  // inside each article tag include an h1 with the name of the land     
  var middleEarth = document.createElement("section");
  middleEarth.id = "middle-earth";
  for (var i = 0; i < lands.length; i++) {
    var articleTag = document.createElement("article");
    var h1Tag = document.createElement('h1');
    h1Tag.textContent = lands[i];
    articleTag.appendChild(h1Tag);
    middleEarth.appendChild(articleTag);
  };
  document.body.appendChild(middleEarth)
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  var uL = document.createElement('ul');
  for (var i = 0; i < hobbits.length; i++) {
    var li = document.createElement('li');
    li.className = "hobbit";
    li.textContent = hobbits[i];
    uL.appendChild(li);
  };
  var shire = document.getElementsByTagName('article')[0]
  shire.appendChild(uL);
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  var d = document.createElement('div');
  d.id = "the-ring";
  var f = document.getElementsByClassName("hobbit")[0];
  f.appendChild(d)
}
keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var uL = document.createElement('ul');
  for (var i = 0; i < baddies.length; i++) {
    var li = document.createElement('li');
    li.className = "baddy";
    li.textContent = baddies[i];
    uL.appendChild(li);
  };
  document.body.appendChild(uL);
  var morder = document.getElementsByTagName('article')[2]
  morder.appendChild(uL);
}
makeBaddies(baddies);

function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
  var as = document.createElement('aside');
  var uL = document.createElement('ul');
  for (var i = 0; i < buddies.length; i++) {
    var li = document.createElement('li');
    li.className = "buddy";
    li.textContent = buddies[i];
    if (buddies[i] == "Gandalf the Grey") {
      li.style.background = 'grey';
    }
    uL.appendChild(li);
  };
  document.body.appendChild(uL);
  var riv = document.getElementsByTagName('article')[1]
  riv.appendChild(uL);

}
makeBuddies(buddies);

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  alert("leaving the shire");
  var hobbits = document.getElementsByTagName("ul")[0].children;
  var riv = document.getElementsByTagName("ul")[1];
  for (var i = 0; i < 4; i++) {
    riv.appendChild(hobbits[0])
  };
}
leaveTheShire();

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  alert("aragon for strider?");
  document.getElementsByClassName('buddy')[3].textContent = "Aragon"
}
beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
  alert("forming the fellowhsip");
  var f = document.createElement('div');
  f.id = 'the-fellowship';
  f.style.background = "green"
  var hobs = document.getElementsByClassName('hobbit');
  var buds = document.getElementsByClassName('buddy');
  for (var i = 0; i < 4; i++) {
    f.appendChild(hobs[0])
  };
  for (var i = 0; i < 5; i++) {
    f.appendChild(buds[0])
  };
  //var all = hobs.concat(buds);
  var riv = document.getElementsByTagName('article')[1];
  riv.appendChild(f);
}
forgeTheFellowShip();

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border

  alert("balrog happens");
  var g = document.getElementsByClassName('buddy')[0];
  g.textContent =  "Gandalf the White"
  g.style.background = 'white';
  g.style.border = '3px solid grey';
}
theBalrog();

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
  alert("horn of gondor");
  var boromir = document.getElementsByClassName('buddy')[4];
  boromir.style.textDecoration = "line-through"
  var uruk = document.getElementsByClassName('baddy')[2];
  uruk.remove();
  
  document.getElementsByTagName("article")[3].appendChild(boromir);
}

hornOfGondor();

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
  alert("headed to mordor frodo?");
  var mor = document.getElementsByTagName("article")[2];
  for (var i = 0; i < 2; i++) {
    var frodo = document.getElementById("the-fellowship").children[0];
    mor.appendChild(frodo);
  };
  var mtDoom = document.createElement('div');
  mtDoom.id = "mount-doom";
  mtDoom.style.background = "red";
  mtDoom.textContent = "doom";
  mor.appendChild(mtDoom);
}
itsDangerousToGoAlone();

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
  alert("gollum takes the ring and finds him self in mount doom");
  var g = document.createElement('div');
  g.id = 'gollum';
  g.textContent="golum"
  var r = document.getElementById('the-ring');
  g.appendChild(r);
  var m = document.getElementById("mount-doom")
  m.appendChild(g)
}
weWantsIt();

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire

  alert("there and back baby, there and back")
  var g = document.getElementById('gollum');
  var b = document.getElementsByClassName('baddy');
  var h = document.getElementsByClassName('hobbit');
  var shire = document.getElementsByTagName("article")[0]
  g.remove();
  for (var i = 0; i < 3; i++) {
    b[0].remove();
    shire.appendChild(h[i])
  };
}
thereAndBackAgain();

















//var input = prompt("whats you rname?");

//var n = document.createElement('h1');
//n.textContent = input;
//document.body.appendChild(n);


//function wordCount (ly) {
  //return ly.split(" ").length
//}
////var lyric = "We should have each other to tea";
////wordCount(lyric);

//function wordFrequency (ly) {
  //a = ly.split(" ");
  //res = {};
  //for (var i = 0; i < a.length; i++) {
    //if (res[a[i]] > 0) {
      //res[a[i]]++
    //} else {
      //res[a[i]] = 1
    //}
  //};
  //return res
//}
////var lyric = "o bla di o bla da";
////wordFrequency(lyric) // { o: 2, blah: 2, di: 1, da: 1 }
//function longestWord (ly) {
  //a = ly.split(" ");
  //res = "";
  //for (var i = 0; i < a.length; i++) {
    //if ( a[i].length > res.length ) {
      //res = a[i];
    //}
  //};
  //return res
//}

////var lyric = "heaven knows I'm miserable now";
////longestWord(lyric) // "miserable"

//function shortestWord (ly) {
  //a = ly.split(" ");
  //res = "asdfasdfasdfasdfasdf";
  //for (var i = 0; i < a.length; i++) {
    //if ( a[i].length < res.length ) {
      //res = a[i];
    //}
  //};
  //return res
//}

////var lyric = "I am the ghost of Troubled Joe";
////shortestWord(lyric) // "I"
//function shortestWords (ly) {
  //a = ly.split(" ");
  //res = ["asdfasdfasdfasdfasdf"];
  //for (var i = 0; i < a.length; i++) {
    //if ( a[i].length == res[0].length ) {
      //res.push(a[i])
    //} else if ( a[i].length < res[0].length ) {
      //res = [a[i]];
    //}
  //};
  //return res
//}


////var lyric = "oh ask me why and I'll die";
////shortestWords(lyric) // ["oh", "me"]

//function longestWords (ly) {
  //a = ly.split(" ");
  //res = [""];
  //for (var i = 0; i < a.length; i++) {
    //if ( a[i].length == res[0].length ) {
      //res.push(a[i])
    //} else if ( a[i].length > res[0].length ) {
      //res = [a[i]];
    //}
  //};
  //return res
//}
//var lyric = "To what you think is your thing";
//longestWords(lyric) // ["think", "thing"]
//
//function makeSecret (secret, password) {
  //return function(p){
    //if (p == password) {
      //return secret;
    //} else {
      //return "no!"
    //}
  //}
//}
