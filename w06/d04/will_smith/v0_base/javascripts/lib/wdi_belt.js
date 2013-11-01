// Note, this is currently a naieve implementation of some of these functions but that is ok

var WDIBelt = WDIBelt || {

  version: 0.1,

  each: function(array, fn) {
    for (var index = 0; index < array.length; index++) {
      var el = array[index];
      fn(el);
    }
  },

  times: function(num, fn) {
    for (var i=0; i<num; i++) {
      fn();
    }
  },

  map: function(array, fn) {
    debugger;
    var new_array = [];
    // some work here
    for (var index = 0; index < array.length; index++) {
      var el = array[index];
      var mappedEl = fn(el);
      new_array.push(mappedEl)
    }
    return new_array
  },

  map2: function(array, fn) {
    var new_array = [];
    // some work here
    this.each(array, function(el) {
      var mappedEl = fn(el);
      new_array.push(mappedEl)
    })
    return new_array
  }

};
