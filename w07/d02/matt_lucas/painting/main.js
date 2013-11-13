colorz = [
"green",
"red",
"black",
"yellow",
"blue",
"white"
];


function getPal() {
  console.log("Let's paint some trees");
  for (var i=0; i<colorz.length; i++) {
    var palette = $("<div>");
    palette.addClass("palette");
    palette.addClass(colorz[i]);
    palette.css=("background-color: " + colorz[0]);
    $("h1").append(palette);

    palette.on("click", function(i){
      return function(e) {
        cChoice = colorz[i];

      };
    }(i));
  }
}

// function changePal(){
//   debugger;
//   $(".tile").on("mouseover", function(e){
//     var tile = $(e.target);
//     tile.addClass( "cChoice" );
//   });
//   $(".tile").on("mouseout", function(e){
//     var tile = $(e.target);
//     tile.removeClass( "cChoice" );
//  });
// }

function paint(numTiles, width, height) {
  console.log("pixels to paint");
  for (var i=0; i<numTiles; i++) {
    var tile = $("<div>")
      .addClass("tile");
    $("body").append(tile);
}
}

// paint(100);
paint(10000);

function turnGreen() {
  $(".tile").on("mouseover", function(e){
    var tile = $(e.target);
    tile.addClass( "green" );
  });
  $(".tile").on("mouseout", function(e){
    var tile = $(e.target);
    tile.removeClass( "green" );
 });
}

function paintGreen(){
  $(".tile").on("click", function(e){
    var tile = $(e.target);
    tile.addClass( "paintitgreen" );
  });
}

function killGreen(){
  $(".tile").on("mousedown", function(e){
    $('.tile').on('mousemove', dangerMouse);
    $(this).addClass( "paintitgreen" );
  });
  $(".tile").on("mouseup", function(e){
    $('.tile').off('mousemove', dangerMouse);
    // $('.tile').off('mousemove', dangerMouse);
  //   console.log("wax off");
  });
}



function dangerMouse() {
  $(this).addClass("paintitgreen");
}


turnGreen();
// paintGreen();
killGreen();
getPal();
// changePal();
