var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

function isEquilateral(triangle) {
  // check to see if all are equal
  return triangle.sideA === triangle.sideB && triangle.sideA === triangle.sideC;
}

function isIsosceles(triangle) {
  if ((triangle.sideA === triangle.sideB && triangle.sideA === triangle.sideC) && (triangle.sideB === triangle.sideA && triangle.sideB === triangle.sideC)) {
    return true;
  }
}

function calcArea(triangle) {
  return (0.5
}


