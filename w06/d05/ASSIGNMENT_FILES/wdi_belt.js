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
