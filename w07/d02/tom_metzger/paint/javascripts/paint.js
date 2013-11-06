var Paint = Paint || {};

Paint.changeGreen = function(e) {
  this.setAttribute("class", "block hover_green");
}

Paint.clearColor = function(e) {
  this.setAttribute("class", "block");
}

// can't permenantly paint tiles
Paint.makeGreen = function(e) {
 this.setAttribute("class", "block click_green");
 this.removeEventListener("mouseout", Paint.clearColor);
}

Paint.generateBlocks = function(numTiles) {
  for (var i=0; i<numTiles; i++) {
    var $block = $("<div/>")
      .addClass("block")
// added for step 2
      .on("mouseover", Paint.changeGreen)
      .on("mouseout", Paint.clearColor)
      .on("click", Paint.makeGreen);

    $("body").append($block);
  }
}



