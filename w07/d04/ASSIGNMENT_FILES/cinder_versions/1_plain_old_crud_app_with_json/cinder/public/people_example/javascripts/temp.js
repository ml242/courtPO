var Cinder = Cinder || {};

Cinder.Cat = {

  create: funtion(options) {
    // TODO
  },

  show: function(id) {
    // TODO
  },

  index: function() {
    return $.ajax({
      url: "cats.json",
      type: "get",
    });
  },

  update: function(id, newAttributes) {
    // TODO
  },

  destroy: function(id) {
    // TODO
  }

}

Cinder.Cat.all().done(function(data) {
  debugger
});


