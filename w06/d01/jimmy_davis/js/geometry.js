var rectangle = {
  length: 4,
  width: 4,

  isSquare: function() {
    if (this.length == this.width) {
      return true;
    } else {
      return false;
    }
  },

  area: function() {
    return this.length * this.width
  },

  perimeter: function() {
    return (this.length * 2) + (this.width * 2)
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
  } else {
    return false;
  }
}

console.log(isEquilateral(triangle));

function isIsosceles(triangle) {
  if (triangle.sideA == triangle.sideB || triangle.sideA == triangle.sideC || triangle.sideB == triangle.sideC) {
    return true;
  } else {
    return false;
  }
}

console.log(isIsosceles(triangle));

function calcArea(triangle) {
   return (triangle.sideA * triangle.sideB) / 2
}

console.log(calcArea(triangle));

function isObtuse(triangle) {
  if ((triangle.sideA * triangle.sideA) + (triangle.sideB * triangle.sideB) < (triangle.sideC * triangle.sideC)) {
    return true;
  } else {
    return false;
  }
}

console.log(isObtuse(triangle));

