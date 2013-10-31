// function doItToIt(thing, doIt) {
//   doIt(thing);
// }

// function windSurf(){
//   return "I am windsurfing";
// }

// windSurf()

// doItToIt(null, function(){alert('hi')})

// doItToIt(null, function(name){alert(name)})
// // null

// doItToIt("Gary", function(name){alert(name)})
// // Gary

// //ruby: [1,2,3].each do |thing| puts thing * 2 end

// [1,2,3].forEach(function(n) {
//   alert(n);
// })

// function alertNumber(n) {
//   alert(n);
// }

// alertNumber(5)

// [1,2,3].forEach(alertNumber)

// doItToIt("windsurfing", function(thing){
//   alert(" i love " + thing);
// });

// function sayName(){
//   return "phil"
// }

// function theSecret(){
//   var secret = "holy grail";
//   return secret;
// }

// function sayName(name) {
//   console.log(name)
// }

// sayName("Josh")

// name = 'phil';

// function sayName(){
//   return name;
// }
// console.log(sayName());

// function knockKnock() {
//   return {joke: "knock knock"}
// }
//returning an object, and inside that object is a string

//declaring outer function
function knockKnock() {
  //declaring inner function
  function whoDat() {
    return "who's there?";
  }
  return whoDat();
}

var joke = knockKnock()

joke = function whoDat(){
  return "who's there?"
}

joke();

function fortuneCookie() {
  return "nothing ventured, nothing gained";
}

var cookie = function(){
  return "nothing ventured, nothing gained";
}

function fortuneCookie() {
  return function() {
    return "nothing ventured, nothing gained";
  }
}

var name = "larry";
function sayName(){
  var name = "susan"
  function sayHi() {
    return name;
  }
  return sayHi();
}

function makeSandwich(ing){
  var ingredient = ing;
  return function(filling) {
    return "mmm a " + ingredient + " and " +  filling + " sandwich";
  }
}

makeSandwich("turkey")("bananas")

// stapler example:

function makeTheCreateStaplerFunction(dye) {

  var createStapler = function() {
    var stapler = {}
    stapler.color = dye;
    return stapler;
  };

  return stapleFactory;
}

var yelloStapleFactory = createStapleFactory("Yellow");
var yelloStapler1 = yelloStapleFactory()

var purpleStapleFactory = createStapleFactory("Puprple")
var purpleStapler1 = purpleStapleFactory();



// function secret
// 2 parameters
//     password
//     message
// secret is going to return a function that will only let you read the message if you give it the correct password

function makePasswordChecker(message){
  var msg = message;
  var pwd = Math.ceil((Math.random() * 10));
  return function makePassword(password) {
    if (pwd === password) {
      return msg;
    }
  }
}

function secret(password, message){
  var password = password;
  var message = message;
  function unlock(pass) {
    return message;
  } else {
    return "i don't know that";
  }
  return unlock;
}

a = secret(1234, 'here is all the money')
a(111)
a(1234)

function makeTicker() {
  var i = 0;
  return function() {
    return i++;
  }
}

ticker = makeTicker()
ticker() //0
ticker() //1
var i = 0

