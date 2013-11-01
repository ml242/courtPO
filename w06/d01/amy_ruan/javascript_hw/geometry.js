var rectangle = {
  length: 4,
  width: 4
};

function isSquare(shape) {
 if (shape.length === shape.width) {
  console.log("This is a square")
 }
 else {
  console.log("This is not a square")
 }
}

function area(shape) {
  var area = shape.length * shape.width;
  return area
}

function perimeter(shape) {
  var perimeter = (2*shape.length) + (2*shape.width);
  return perimeter
}

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

function isEquilateral(triangle) {
 if (triangle.sideA === triangle.sideB === triangle.sideC) {
  return true;
 }
 else
 return false;
}

function isIsosceles(triangle) {
  switch(true) {
    case triangle.sideA === triangle.sideB:
    return true;
    break;
    case triangle.sideB === triangle.sideC:
    return true;
    break;
    case triangle.sideC === triangle.sideA:
    return true;
    break;
    default:
    return false;
  }
}

function isObtuse(triangle) {
  switch(true) {
    case Math.pow((triangle.sideA),2) > (Math.pow(triangle.sideB,2) + Math.pow(triangle.sideC,2)):
    return true;
    break;
    case Math.pow((triangle.sideB),2) > (Math.pow(triangle.sideA,2) + Math.pow(triangle.sideC,2)):
    return true;
    break;
    case Math.pow((triangle.sideC),2) > (Math.pow(triangle.sideA,2) + Math.pow(triangle.sideB,2)):
    return true;
    break;
    default:
    return false;
  }
}

function calcArea(triangle) {
  var p = (triangle.sideA + triangle.sideB + triangle.sideC)/2;
  var a = triangle.sideA;
  var b = triangle.sideB;
  var c = triangle.sideC;
  var inside = (p*(p-a)*(p-b)*(p-c))
  return Math.sqrt(inside);
}




