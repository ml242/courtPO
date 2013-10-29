var rectangle = {
  length: 4,
  width: 4
};

//check if square -- isSquare
//calcArea
//calcPerimeter

var isSquare = function() {
  if (rectangle.length === rectangle.width) {
    console.log("This is a square");
  }
}

var calcArea = function() {
  console.log(rectangle.length * rectangle.width);
}

var calcPerimeter = function() {
  console.log((2 * rectangle.length) + (2 * rectangle.width));
}

isSquare();
calcArea();
calcPerimeter();