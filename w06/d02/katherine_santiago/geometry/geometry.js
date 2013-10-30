var rectangle = {
  length: 4,
  width: 4
};


//isSquare
function isSquare(length, width) {
  return length == width;
}

console.log(isSquare(rectangle.length, rectangle.width));

//Area
function findArea(length, width) {
  return length * width;
}

console.log(findArea(rectangle.length, rectangle.width));

//perimeter
function findPerimeter(length,width) {
  return ((length * 2) + (width * 2));
}

console.log(findPerimeter(rectangle.length, rectangle.width));

// TRIANGLE
var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};
//isEquilateral
function isEquilateral(a, b, c) {
  return (a == b == c);
}

console.log(isEquilateral(triangle.sideA, triangle.sideB, triangle.sideC));


// isIsosceles
function isIsosceles(a, b, c) {
  return (c === b) && (a !== c) && (a != b)
}

console.log(isIsosceles(triangle.sideA, triangle.sideB, triangle.sideC));

//calcArea
function calcArea(a, b, c) {
  var perimeter = ((a+b+c)/2);
  return Math.sqrt(perimeter * (perimeter - a) * (perimeter - b) * (perimeter - c));
}

console.log(calcArea(triangle.sideA, triangle.sideB, triangle.sideC));

// isObtuse - If a^2 + b^2 < c^2, then the triangle is obtuse !!!
function isObtuse() {
  return ((Math.pow(triangle[0], 2) + Math.pow(triangle[1], 2)) < Math.pow(triangle[2], 2));
}

console.log(isObtuse());
