$( document ).ready(function() {

// Question 1

// var hay1 = $('h1');
// var b = $("body");

// function addClass(color){
//   // alert("silly computer");
//   b.addClass( "pink" );
// }

// hay1.on('click', addClass);

// var hay1 = $('h1');
// var b = $("body");

// function changeClass(color){
//   // alert("silly computer");
//   if (b.hasClass( "pink" ) === true) {
//     b.removeClass();
//   } else {
//     b.addClass( "pink" );
//   }
// }

// hay1.on('click', changeClass);


var hay1 = $('h1');
var b = $("body");

var colorz = [
"FF2603",
"FF6A01",
"FFA62E",
"757E00",
"FFC859"
];

function randColor(color){
  // alert("silly computer");
    b.removeClass();
    var number = 1 + Math.floor(Math.random() * 4);
    // b.addClass(colorz[number]);
    b.css("background-color", "#" + colorz[number]);
}

hay1.on('click', randColor);


});