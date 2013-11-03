var WDIBelt = WDIBelt || {};

WDIBelt.version = 0.2;

WDIBelt.each = function(array, func) {
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    func.call(element, index);
  }
};

WDIBelt.map = function(array, func) {
  var results = [];
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    results.push(func(element));
  }
  return results;
};

function sayName(self, index){
  if (self.name === 'Admiral Ackbar'){
    alert("It's a trap!");
    console.log(index);
  } else {
    alert("May the force be with you.");
  }
}

// What shoudl be run with anon function
// WDIBelt.each(rebelAlliance, function(index){sayName(this, index)});

// What should be run regularly
// WDIBelt.each(rebelAlliance, sayName);
// Also adjust sayName(index) and change self to this
