var WDIBelt = WDIBelt || {};

WDIBelt.version = 0.2;

WDIBelt.each = function(array, func) {
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    func.call(element,index);
  }
}

WDIBelt.map = function(array, func) {
  var results = [];
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    results.push(func.call(element,element));
  }
  return results;
}


// WDIBelt.select = function(array, func, parameter)
// { var results = [];
//   for (var index = 0; index < array.length; index++) {
//     var element = array[index];
//     var new_element = func.call(element, element);
//     var checker = parameter.call(new_element,new_element);
//     if (checker)
//     {results.push(new_element)}
//   }
//   return results;
// }



WDIBelt.select = function(array, parameter)
{ var results = [];
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    var checker = parameter.call(element,element);
    if (checker)
    {results.push(element)}
  }
  return results;
}


WDIBelt.random = function(array) {
  var length = array.length;
  var random_index = Math.floor(Math.random() * (length));
  return array[random_index];
}

WDIBelt.contains = function(array, value){
  // debugger;
 var check = false;
 for (var index = 0; index < array.length; index++) {
    var element = array[index];
    var checker = function(){
      if(element === value){
        check = true;
      }
    }
  checker()
  }
return check
}



var d1 = {name: "C-3P0", model: "protocol droid"};
var d2 = {name: "R2-D2", model: "astromech"};

var droids = [d1, d2];

function status(){
    console.log(this.name + ", " + this.model + " at your service.");
}

WDIBelt.each(droids, status);


var s1 = {name: "Bail Organa", allegiance: "Rebel Alliance"};
var s2 = {name: "Mon Mothma", allegiance: "Rebel Alliance"};
var s3 = {name: "Admiral Ackbar", allegiance: "Rebel Alliance"};

var rebelAlliance = [s1, s2, s3];

function say(){
    if(this===s3)
    console.log("It's a trap");
    else{
      console.log("May the Force be with you.")
    }
}

var c1 = {name: "Luke Skywalker", side: "Rebel Alliance"};
var c2 = {name: "Darth Vader", side: "Galactic Empire"};
var c3 = {name: "Admiral Ackbar", side: "Rebel Alliance"};
var c4 = {name: "Emperor Palpatine", side: "Galactic Empire"};

var characters = [c1, c2, c3, c4];

var ewoks = ["Chirpa", "Kneesaa", "Logray", "Wicket", "Paploo", "Tarfang", "Teebo"];
WDIBelt.random(ewoks);
