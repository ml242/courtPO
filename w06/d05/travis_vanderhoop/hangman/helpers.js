// allows me to call .randomElement() on an array
Array.prototype.randomElement = function () {
    return this[Math.floor(Math.random() * this.length)];
};

// allows me to iterate through an array, running any chosen function on
// each element in said array.
var WDIBelt = {
  each: function(array, fn) {
    for (var index = 0; index < array.length; index++) {
      var el = array[index];
      fn(el);
    }
  };
}

