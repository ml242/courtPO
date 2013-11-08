var CatBook = CatBook || {}

// NEW: I want to fetch all the cats from my database

$(document).ready(function() {
  CatBook.listCats();
  $("#cat-form").on("submit", CatBook.createCat);
});

CatBook.listCats = function() {
  $.ajax({
    type: "GET",
    url: "/cats.json",
  }).done(function(cats) {

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

      $deleteButton = $("<button>")
        .attr("cat-id", cat["id"])
        .text("Delete Kitty")
        .appendTo($li)
        .on("click", function(e){
          e.preventDefault();

          var catId = $(this).attr("cat-id");
          var deleteUrl = "/cats/"+catId+".json";

          function deleteCallback(deletedCat){
            debugger
            console.log("Deleted Cat:");
            console.log(deletedCat);
            CatBook.listCats();
          }

          $.ajax({
            type: "DELETE",
            url: deleteUrl
          }).done(deleteCallback)
        });

    })
  })
}

CatBook.createCat = function() {
  // TODO
}



