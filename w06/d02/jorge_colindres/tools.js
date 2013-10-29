
var WDIBelt = {
  each: function(array, fn) {
    for (var i = 0; i < array.length; i++) {
      var el = array[i];
      fn(el);
    }
  },
  map: function(array, fn){
    var newArray = [];
    this.each(array, function(elem){
      var newEl = fn(elem);
      newArray.push(newEl);
    });
    console.log(array); // log the original array to compare
    return newArray;
  },
  mapInPlace: function(array, fn){
    for (var i = 0; i < array.length; i++) {
      var el = array[i];
      array[i] = fn(el); // change the current el in array to the element as run through fn
    }
    return array;
  }
};
