var rectangle = {
  length: 4,
  width: 4,

  isSquare: function() {
    if (this.length == this.width) {
      return true;
    }
    else {
      return false;
    }
  },

  area: function() {
    return this.length * this.width;
  },

  perimeter: function() {
    return (this.length * 2) + (this.width * 2);
  }


};
console.log(rectangle.isSquare());
console.log(rectangle.area());
console.log(rectangle.perimeter());

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4,
};

function isEquilateral(triangle) {
  if (triangle.sideA == triangle.sideB && triangle.sideB == triangle.sideC) {
    return true;
  }
  else {
    return false;
  }
}

console.log(isEquilateral(triangle));

function isIsosceles(triangle) {
  if (triangle.sideA == triangle.sideB || triangle.sideA == triangle.sideC || triangle.sideB == triangle.sideC) {
    return true;
  }
  else {
    return false;
  }
}

console.log(isIsosceles(triangle));

function calcArea(triangle) {
  return (triangle.sideA + triangle.sideB + triangle.sideC) / 2;
}

console.log(calcArea(triangle));

function isObtuse(triangle) {
  var sideLengths = [triangle.sideA, triangle.sideB, triangle.sideC];
  var c = Math.max(sideLengths);
  var index = sideLengths.indexOf(c);
  sideLengths.splice(index, 1);
  var a = sideLengths[0];
  var b = sideLengths[1];
  var cosC = (Math.pow(a, 2) + Math.pow(b, 2) - Math.pow(c, 2)) / (2 * (a * b));
  var arcCos = Math.acos(cosC);
  if (arcCos >  90) {
    return true;
  }
  else {
    return false;
  }
}

console.log(isObtuse(triangle));












