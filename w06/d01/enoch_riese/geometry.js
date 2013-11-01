var rectangle = {
  length: 4,
  width: 4
};

function isSquare(rect) {
  console.log(rect.length == rect.width);
}

function area(rect) {
  console.log(rect.length * rect.width);
}

function perimeter(rect) {
  console.log(2 * rect.length + 2 * rect.width);
}

function isEquilateral(triangle) {
  console.log(triangle.sideA == triangle.sideB == triangle.sideC);
}

function isIsosceles(triangle) {
  console.log(triangle.sideA == triangle.sideB || triangle.sideB == triangle.sideC || triangle.sideA == triangle.sideB)
}

function isObtuse(triangle) {
  console.log(triangle.sideA*triangle.sideA + triangle.sideB*triangle.sideB < triangle.sideC*triangle.sideC)
}
