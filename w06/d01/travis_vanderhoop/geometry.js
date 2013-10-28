var rectangle = {
  length: 4,
  width: 4
};

isSquare=function(length, width) {
  if (length == width) {
    return true;
  }
  else {
    return false;
  }
}

area = function(length, width) {
  var area_answer = length*width;
  return area_answer;
}

perimeter = function(length, width) {
  var perimeter_answer = (length*2) + (width*2);
  return perimeter_answer;
}



