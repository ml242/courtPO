var rectangle = {
  length: 4,
  width: 4
};

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

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

// isEquilateral - Returns whether the triangle is equilateral or not
function isEquilateral(triangle){
  if(triangle.sideA === triangle.sideB && triangle.sideB === triangle.sideC){
    alert("it is equilateral");
  } else {
    alert("it is not equilateral");
  }
}
isEquilateral(triangle);
// isIsosceles - Returns whether the triangle is isosceles or not
function isIsoceles(triangle){
  if(triangle.sideA === triangle.sideB || triangle.sideA === triangle.sideC){
    alert("it is isosceles");
  }else if(triangle.sideB === triangle.sideA || triangle.sideB === triangle.sideC){
    alert("it is isosceles");
  }else if(triangle.sideC === triangle.sideA || triangle.sideA === triangle.sideB){
    alert("it is isosceles");
  }else {
    alert("it is not isosceles");
  }
}
isIsoceles(triangle);
// calcArea - Calculates the area of the Triangle
function calcArea(triangle){
  var s = (triangle.sideA + triangle.sideB + triangle.sideC) / 2;
  var a = Math.sqrt(s * (s - triangle.sideA) * (s - triangle.sideB) * (s - triangle.sideC));
  alert("the area is " + a);
}
calcArea(triangle);
// isObtuse - Returns whether the triangle is obtuse or not
function isObtuse(triangle){
  if((Math.pow(triangle.sideA, 2) + Math.pow(triangle.sideB, 2)) < Math.pow(triangle.sideC, 2)){
    alert("the triangle is obtuse");
  } else {
    alert("the triangle is not obtuse");
  }
}
isObtuse(triangle);


