var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

// isEquilateral
// isIsosceles
// calcArea
// isObtuse

var isEquilateral = function() {
  if ((triangle.sideA === triangle.sideB) && (triangle.sideA === triangle.sideC) && (triangle.sideB === triangle.sideC)) {
    console.log("true");
  }
}

var isIsosceles = function() {
  if ((triangle.sideA === triangle.sideB) || (triangle.sideA === triangle.sideC) || (triangle.sideB === triangle.sideC)) {
    console.log("true");
  }
}

var calcArea = function() {
  var perimeter = ((triangle.sideA + triangle.sideB + triangle.sideC) / 2);
  var area = Math.sqrt(perimeter * (perimeter - triangle.sideA) * (perimeter - triangle.sideB) * (perimeter - triangle.sideC));
  console.log("The area is " + area);
}

// If a^2 + b^2 < c^2, then the triangle is obtuse
//pow(x,y) -- X ^ Y

// var isObtuse = function() {
//   var sortedTriangle = triangle.sort();
//   if (((Math.pow(sortedTriangle[1], 2) + (Math.pow(sortedTriangle[2], 2)) < (Math.pow(sortedTriangle[0], 2)) {
//     console.log("true");
//   }
// }

isEquilateral();
isIsosceles();
calcArea();
//isObtuse();

