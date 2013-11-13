var triangle = {
  side1: length,
  side2: length,
  side3: length
};

length = parseInt(prompt("What is the length of the side?"), 10);

triangle.side1 = parseInt(triangle.side1+length, 10);
triangle.side2 = parseInt(triangle.side2+length, 10);
triangle.side3 = parseInt(triangle.side3+length, 10);

function givePerimeter(triangle) {
  return (triangle.side1 + triangle.side2 + triangle.side3);
};

console.log(givePerimeter(triangle))