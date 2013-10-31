var operator = prompt("What type of operation would you like to perform")
var operand = prompt("input the numbers you would like to perform the operation on. (please seperate with comma)")

var arrayOfNumbers = operand.split(",")

function calculator(operator, arrayOfNumbers) {
  if (operator == "add"){
    var i = 0;
    var sum = 0;
    while (i < arrayOfNumbers.length) {
      var num = parseInt(arrayOfNumbers[i])
      sum = sum + num;
      i++;
    }
    return sum;
  } else if (operator == "subtract") {
    var i = 1;
    var diff = arrayOfNumbers[0];
    while (i < arrayOfNumbers.length) {
      var num = parseInt(arrayOfNumbers[i])
      diff = diff - num;
      i++;
    }
    return diff;
  } else if (operator == "multiply") {
    var i = 0;
    var product = 1;
    while (i < arrayOfNumbers.length) {
      var num = parseInt(arrayOfNumbers[i])
      product = product * num;
      i++;
    }
    return product;
  } else if (operator == "divide") {
    var i = 1;
    var quotient = parseInt(arrayOfNumbers[0]);
    while (i < arrayOfNumbers.length) {
      var num = parseInt(arrayOfNumbers[i])
      quotient = quotient / num;
      i++;
    }
    return quotient;
  }
};

alert("the answer is " + calculator(operator, arrayOfNumbers))


// var operator = prompt("What type of operation would you like to perform")
// var firstOperand = parseInt(prompt("input your first number"))
// var secondOperand = parseInt(prompt("input your second number"))

// function calculator(operator, firstOperand, secondOperand) {
//   if (operator == "add"){
//     return firstOperand + secondOperand;
//   } else if (operator == "subtract") {
//     return firstOperand - secondOperand;
//   } else if (operator == "multiply") {
//     return firstOperand * secondOperand;
//   } else if (operator == "divide") {
//     return firstOperand / secondOperand;
//   } else if (operator == "modulus") {
//     return firstOperand % secondOperand;
//   } else if (operator == "square root") {
//     return Math.sqrt(firstOperand);
//   }
// };

// alert("the answer is " + calculator(operator, firstOperand, secondOperand))