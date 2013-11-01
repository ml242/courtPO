var WDIBelt = WDIBelt || {};

WDIBelt.version = 0.2;

WDIBelt.each = function(array, func) {
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    // debugger
    func.call(element, element, index);
  }
}

WDIBelt.map = function(array, func) {
  var results = [];
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    results.push(func(element));
  }
  return results;
}



function say(element) {
  // debugger
  if (element === s3) {
    console.log( "It's a Trap!");
    console.log(index)
  } else {
    console.log( "May the force be with you");
  }
}
