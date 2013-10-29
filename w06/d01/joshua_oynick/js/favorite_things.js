favs = ["www.google.com", "spaghetti", "blue", "summer"]

console.log("My #1 favorite website is " + favs[0])
console.log("My #1 favorite food is " + favs[1])
console.log("My #1 favorite color is " + favs[2])
console.log("My #1 favorite season is " + favs[3])

var rectangle = {
  length: 4,
  width: 4
};

function isSquare(rectangle) {
  if (rectangle.length !== rectangle.width) {
    return false;
  } else {
    return true;
  }
}

function area(rectangle) {
  return rectangle.length * rectangle.width;
}

function perimeter(rectangle) {
  return (rectangle.length + rectangle.width) * 2;
}

console.log("Is it a square? " + isSquare(rectangle))
console.log("The area of the rectangle is " + area(rectangle) + ".")
console.log("The perimeter of the rectangle is " + perimeter(rectangle) + ".")

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

function isEquilateral(triangle) {
  if (triangle.sideA === triangle.sideB && triangle.sideB === triangle.sideC) {
    return true;
  } else {
    return false;
  }
}

console.log("Is the triangle equilateral? " + isEquilateral(triangle))

function isIsosceles(triangle) {
  if (triangle.sideA === triangle.sideB || triangle.sideB === triangle.sideC || triangle.sideA === triangle.sideC) {
    return true;
  } else {
    return false;
  }
}

console.log("Is the triangle isosceles? " + isIsosceles(triangle))

function calcArea(triangle) {
  var s = (triangle.sideC + triangle.sideB + triangle.sideA)/2;
  return Math.sqrt(s * (s - triangle.sideA) * (s - triangle.sideB) * (s - triangle.sideC));
}

console.log("Area = " + calcArea(triangle).toFixed(2));

function isObtuse(triangle) {
  if ((Math.pow(triangle.sideA, 2) + Math.pow(triangle.sideB)) < Math.pow(triangle.sideC, 2)) {
    console.log("The triangle is obtuse");
  } else {
    console.log("The triangle is not obtuse");
  }
}

isObtuse(triangle)


