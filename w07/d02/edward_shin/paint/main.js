$(document).ready(function() {
  console.log('ready bitch')
  //adding button
  $("button").click(function() {
    $("#wrapper")
    .append($("<div>")
      .attr("class", "tile"))
  })

  //adding color palette
  var colorsArray = ["pink", "blue", "green", "yellow", "purple"];
  for (var i = 0; i < colorsArray.length; i++) {
    $(".palette").append($("<div>")
      .addClass("colorPalette "+ colorsArray[i] )
    )}
  //adding tiles
  for (var i = 1; i < 1326; i++) {
    $("#wrapper")
    .append($("<div>")
      .attr("class", "tile"))
  }

  //set variable color (default green)
  var currentColor = "green"
  //event listener functions
  function hoverGreen(){
    $(this).addClass(currentColor);
  }
  function noGreen(){
    $(this).removeClass(currentColor);
  }
  function clickGreen() {
    $(this).addClass("perm_"+currentColor);
  }
  function downGreen() {
    $(this).addClass("perm_"+currentColor);
    $(".tile").on("mousemove", moveGreen);
  }
  function moveGreen(){
    $(this).addClass("perm_"+currentColor);
  }
  function upGreen(){
    $(this).addClass("perm_"+currentColor);
    $(".tile").off("mousemove", moveGreen);
  }
  function chooseColor() {
    var classList = $(this).attr("class").split(" ");
    currentColor = classList[1];
  }

  //event listeners
  $(".tile").on("mouseover", hoverGreen);
  $(".tile").on("mouseout", noGreen);
  $(".tile").on("click", clickGreen);
  $(".tile").on("mousedown", downGreen);
  $(".tile").on("mouseup", upGreen);
  $(".colorPalette").on("click", chooseColor);

});
