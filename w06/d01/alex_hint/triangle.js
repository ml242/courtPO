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
  perimeter = ((triangle.sideA + triangle.sideB + triangle.sideC) / 2);
  area = Math.sqrt(perimeter * (perimeter - triangle.sideA) * (perimeter - triangle.sideB) * (perimeter - triangle.sideC));
  console.log("The area is " + area);
}

isEquilateral();
isIsosceles();
calcArea();

