var CatBook = CatBook || {}

// NEW: I want to fetch all the cats from my database

$(document).ready(function() {
  CatBook.listCats();
  $("#cat-form").on("submit", CatBook.createCat);
});

CatBook.listCats = function() {
  debugger
  $.ajax({
    type: "GET",
    url: "/cats.json",
  }).done(function(cats) {
    debugger
    $ul = $("#cat-index");

    $.each(cats, function(i, cat){
      $li = $("<li>")
        .appendTo($ul)

      $name = $("<h3>")
        .text(cat["name"] + " [" + cat["age"] + "]")
        .appendTo($li);

      $tagLine = $("<p>")
        .text(cat["tag_line"])
        .appendTo($li);

      $imageUrl = $("<img>")
        .attr("src", cat["image_url"])
        .appendTo($li);
    })
  })
}

CatBook.createCat = function() {
  // TODO
}



