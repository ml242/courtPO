var rectangle = {
  length: 4,
  width: 4
};

// write the following functions:

// isSquare - Returns whether the rectangle is a square or not
function isSquare(rectangle){
  if(rectangle.length === rectangle.width){
    alert("it is a square");
  } else {
    alert("it isn't a square");
  }
}

isSquare(rectangle);
// area - Calculates the area of the rectangle
function area(rectangle){
  alert("The area is " + (rectangle.length * rectangle.width));
}

area(rectangle);
// perimeter - Calculates the perimeter of the rectangle
function perimeter(rectangle){
  alert("The perimiter is " + ((rectangle.length * 2) + (rectangle.width * 2)));
}
perimeter(rectangle);
