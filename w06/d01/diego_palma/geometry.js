var rectangle = {
  length: 4,
  width: 4
};

// isSquare - Returns whether the rectangle is a square or not
function isSquare(length,width) {
  return length == width;
};
console.log(isSquare(rectangle.length, rectangle.width));

// area - Calculates the area of the rectangle
function calculateArea (length,width) {
  return length * width;
};
console.log(calculateArea(rectangle.length, rectangle.width));


// perimeter - Calculates the perimeter of the rectangle
function calculatePerimeter(length,width) {
  return 2 * (length + width)
};
console.log(calculatePerimeter(rectangle.length, rectangle.width));

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

// isEquilateral - Returns whether the triangle is equilateral or not

function isEquilateral(sideA, sideB, sideC) {
  return sideA == sideB == sideC;
};

console.log(isEquilateral(triangle.sideA, triangle.sideB, triangle.sideC));

// isIsosceles - Returns whether the triangle is isosceles or not
function isIsosceles(sideA, sideB, sideC) {
 return (sideA == sideB) || (sideB == sideC) && (sideC !== sideA) || (sideA !== sideB)
};

console.log(isIsosceles(triangle.sideA, triangle.sideB, triangle.sideC));

// calcArea - Calculates the area of the Triangle

function calcArea(a, b, c) {
  var perimeter = ((a+b+c)/2);
  return Math.sqrt(perimeter * (perimeter - a) * (perimeter - b) * (perimeter - c));
}

console.log(calcArea(triangle.sideA, triangle.sideB, triangle.sideC));


// isObtuse - Returns whether the triangle is obtuse or not


