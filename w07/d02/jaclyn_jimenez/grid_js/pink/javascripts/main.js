$(document).ready(function() {

  // $("#clicker").on("click", function(){
  //   $(".theWorld").css('background-color', "#EE3355")
  // })
  function changeColor() {
    var rainbow = ['pinkWorld', 'blueWorld', 'greenWorld', 'purpleWorld', 'orangeWorld', 'redWorld']
    var index = Math.floor(Math.random()*rainbow.length)
    var randomColor = rainbow[index]
    $("body").removeClass().toggleClass(randomColor)

  }

  var click1 = $("#clicker").on("click", changeColor)

  // $("#clicker").on("click", function(){
  //   if (click1) {
  //   $("body").toggleClass('pinkWorld', 'greenWorld')
  // }


})




