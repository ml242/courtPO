var WDIBelt = WDIBelt || {};

WDIBelt.version = 0.2;

WDIBelt.each = function(array, func) {
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    func.call(element, index);
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

WDIBelt.select = function(array, truthTest) {
  var results = [];
  this.each(array, function(){
    if (truthTest(this) === true) {
      results.push(this);
    }
  });
  return results;
}

WDIBelt.random = function(array) {
  var randIndex = Math.floor(array.length * Math.random())
  return array[randIndex];
}

WDIBelt.contains = function(array, item) {
  var result = false;
  this.each(array, function(){
    if (this.toString() === item) {
      result = true;
    }
  });
  return result;
}
