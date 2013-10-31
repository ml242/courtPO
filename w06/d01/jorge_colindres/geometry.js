var rectangle = {
  length: 4,
  width: 4
};

function isSquare(rectangle){
  if (rectangle.length % rectangle.width === 0) {
    return true;
  } else {
    return false;
  }
}

function getArea(rectangle){
  return rectangle.length * rectangle.width;
}

function getPerimeter(rectangle){
  return (rectangle.length * 2) + (rectangle.width * 2);
}

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

function isEquilateral(triangle){
  if (triangle.sideA === triangle.sideB && triangle.sideB === triangle.sideC && triangle.sideA == triangle.sideC) {
    return true;
  } else {
    return false;
  }
}

function isIsosceles(triangle){
  if ((triangle.sideA === triangle.sideB) || (triangle.sideB === triangle.sideC) || (triangle.sideC === triangle.sideA)) {
    return true;
  } else {
    return false;
  }
}

function calcArea(triangle) {
  semiperim = (triangle.sideA + triangle.sideB + triangle.sideC) / 2;
  areaSquared = (semiperim - triangle.sideA) * (semiperim - triangle.sideB) * (semiperim - triangle.sideC);
  return Math.sqrt(areaSquared);
}

function isObtuse(triangle){
  c = Math.pow(triangle.sideA, 2) + Math.pow(triangle.sideB, 2);
  hypotenuse = Math.pow(c, 2);
  if (hypotenuse < triangle.sideC){
    return true;
  } else {
    return false;
  }
}


