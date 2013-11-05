$(document).ready(function() {
  console.log('ready bitch')

  for (var i = 1; i < 199; i++) {
    $("#tile-box")
    .append($("<div>")
      .attr("class", "tile"))
  }


  $("button").click(function() {
    $("#tile-box")
    .append($("<div>")
      .attr("class", "tile"))
  })

  function hoverGreen(){
    $(this).addClass("green");
  }
  function noGreen(){
    $(this).removeClass("green");
  }
  function clickGreen() {
    $(this).addClass("perm_green");
  }
  function downGreen() {
    $(this).addClass("perm_green");
    $(".tile").on("mousemove", moveGreen);
  }
  function moveGreen(){
    $(this).addClass("perm_green");
  }
  function upGreen(){
    $(this).addClass("perm_green");
    $(".tile").off("mousemove", moveGreen);
  }


  $(".tile").on("mouseover", hoverGreen);
  $(".tile").on("mouseout", noGreen);
  $(".tile").on("click", clickGreen);
  $(".tile").on("mousedown", downGreen);
  $(".tile").on("mouseup", upGreen);




});
