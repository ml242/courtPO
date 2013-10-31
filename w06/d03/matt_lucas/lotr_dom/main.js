var outerName = "Larry"

function sayName() {
  var outerName = "susan"
  function sayHi() {
    return outerName;
  }
  return sayHi;
}

function makeSandwich(ing){
  var ingredient = ing;
  return function(filling) {
    return "mmm a " + ingredient + " and " + filling + " sandwhich";
  }
}

// secret
// 2 parameters
//     password
//     message
// secret is going to return a function
// that will only let you read the message
// if you give it the correct password
function secret(password, message) {
  var pass = password;
  var msg = message;
  return function(password) {
    if (pass === password) {
      return msg;
    } else {
      return "wrong!"
    }
  }
}
// refactor to only take one parameter message
// in your secret function create a random number between one and 10
// only let the user read the message if they guess the random number
function secret(message) {
  var pass = Math.ceil(Math.random() * 10);
  var msg = message;
  return function(password) {
    if (pass === password) {
      return msg;
    } else {
      return "wrong!"
    }
  }
}

//
function makeTicker() {
  var i = 0;
  return function() {
    return i++;
  }
}
