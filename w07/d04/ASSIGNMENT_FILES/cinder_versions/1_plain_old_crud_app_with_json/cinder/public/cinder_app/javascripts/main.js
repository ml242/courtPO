// $.ajax({
//   type: "POST",
//   url: "/cats.json",
//   data: {
//     cat: {
//       name: "Jonathan"
//     }
//   }
// }).done(function(data){
//   debugger
//   console.log(data);
// })


var CatBook = CatBook || {}

$(document).ready(function(){
  CatBook.initialize();
  Cat
})

CatBook.initialize = function() {
  $("#create-form").on("submit", function(e) {
    e.preventDefault();

    var form = $(this);

    var name = form.find("input[name='name']").val()
    var image_url = form.find("input[name='name']").val()

    var catObject = {
      "name":
      "age":
      "image_url":
      "tag_line":
    };

    CatBook.Cat.create()
  })
}

CatBook.Cat = {

  index: function() {
    return $.ajax({
      type: "GET",
      url: "/cats.json"
    });
  },

  create: function(catParams) {
    return $.ajax({
      type: "POST",
      url "/cats.json",
      data: { cat: catParams}
    });
  }

};
