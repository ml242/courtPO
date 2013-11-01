
var rectangle = {
  length: 4,
  width: 4
};

function isSquare(rectangle)
  {
  if (rectangle.length  == rectangle.width)
    {
      return true;
    }
    else
    {
      return false;
    }
  }


isSquare(rectangle)


function area(length, width){
  return length * width;
}

area(rectangle.length,rectangle.width)


function perimeter(length, width){
  return (2*length) + (2*width);
}

perimeter(rectangle.length,rectangle.width)



var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

isEquilateral
//Returns whether the triangle is equilateral or not
function isEquilateral(triangle)
  {
  if (triangle.sideA  == triangle.sideB == triangle.sideC)
    {
      return true;
    }
    else
    {
      return false;
    }
  }


isIsosceles
//Returns whether the triangle is isosceles or not
function isIsosceles(triangle)
  {
  if (triangle.sideA  == triangle.sideB || triangle.sideB == triangle.sideC || triangle.sideA == triangle.sideC)
    {
      return true;
    }
    else
    {
      return false;
    }
  }

isIsosceles(triangle)


calcArea
//Calculates the area of the Triangle
function calcArea(side, side, base){
  // half base times height;
  // height is found by cut base in half and then times the base with the side
  // halfBase = 0.5*base
  var halfBase = 0.5*base;
  // side = side.B
  //b square = c square - a square
  //b = square root (c square - a square)
      height = Math.sqrt((side*side) - (halfBase*halfBase));
  //b square = height
   area = halfBase * height
  return area

}

calcArea(triangle.sideB,triangle.sideC, triangle.sideA)




isObtuse
//Returns whether the triangle is obtuse or not
function isObtuse(triangle)
  {
  if (triangle.sideA  != triangle.sideB != triangle.sideC)
    {
      return true;
    }
    else
    {
      return false;
    }
  }

isObtuse(triangle)

