// allows me to call .randomElement() on an array
Array.prototype.randomElement = function () {
    return this[Math.floor(Math.random() * this.length)];
};

// allows me to iterate through an array, running any chosen function on
// each element in said array.
Array.prototype.each = function(fn) {
  for (var index = 0; index < this.length; index++) {
      var el = this[index];
      fn(el);
    }
}
