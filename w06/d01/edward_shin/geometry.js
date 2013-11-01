// var rectangle = {

//   sides: {
//     length: 4,
//     width: 4
//   },
//   isSquare: function() {
//     if(this.length == this.width) {
//       return true;
//     } else {
//       return false;
//     }
//   },
// };

var rectangle = {
  length: 4,
  width:4
}

function isSquare(rectangle) {
  if (rectangle.length == rectangle.width) {
    return true;
  } else {
    return false;
  }
};

function area(rectangle) {
  return rectangle.width * rectangle.length;
};

function perimeter(rectangle) {
  return rectangle.width * 2 + rectangle.length *2;
};


var triangle = {
  sideA: 4,
  sideB: 3,
  sideC: 4
};

function isEquilateral(triangle) {
 if (triangle.sideA == triangle.sideB && triangle.sideA == triangle.sideC && triangle.sideB == triangle.sideC) {
  return true;
 } else {
  return false;
 }
};

function isIsosceles(triangle) {
  if((triangle.sideA == triangle.sideB && triangle.sideA != triangle.sideC) || (triangle.sideB == triangle.sideC && triangle.sideB != triangle.sideA) ||
    (triangle.sideA == triangle.sideC && triangle.sideA != triangle.sideB)) {
    return true;
  } else {
    return false;
  }
};

function calcArea(triangle) {
  var p = (triangle.sideA + triangle.sideB + triangle.sideC) / 2;
  var sqrt = p*(p - triangle.sideA)*(p - triangle.sideB)*(p - triangle.sideC);
  var area = Math.sqrt(sqrt);
  return area;
}

function isObtuse(triangle) {
  if (Math.pow(triangle.sideA, 2) + Math.pow(triangle.sideB, 2) < Math.pow(triangle.sideC, 2)) {
    return true;
  } else if (Math.pow(triangle.sideC, 2) + Math.pow(triangle.sideB, 2) < Math.pow(triangle.sideA, 2)) {
    return true
  } else if (Math.pow(triangle.sideA, 2) + Math.pow(triangle.sideC, 2) < Math.pow(triangle.sideB, 2)) {
    return true;
  } else {
    return false;
  }
};

function isScalene (triangle) {
  if(triangle.sideA != triangle.sideB && triangle.sideA != triangle.sideC && triangle.sideB != triangle.sideC) {
    return true;
  } else {
    return false;
  }
};


