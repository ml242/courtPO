var WDIBelt = WDIBelt || {};

WDIBelt.version = 0.2;

WDIBelt.each = function(array, func) {
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    // call the function in the context of this referring to the element
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

WDIBelt.select = function(array, func) {
  var results = [];
  this.each(array, function(value, index) {
    debugger;
    if (func(value)) {
      results.push(this);
    }
  });
  return results;
}
