var WDIBelt = WDIBelt || {};

WDIBelt.version = 0.2;

WDIBelt.each = function(array, func) {
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    func.call(element, element);
  }
}

WDIBelt.each_with_index = function(array, func) {
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    func.call(element, element, index);
  }
}

WDIBelt.map = function(array, func) {
  var results = [];
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    results.push(func.call(element, element));
  }
  return results;
}
