// Prompt user to enter an operator and two operands
//support addition, subtraction, multiplication, and division
//output may appear in the console or in an alert

var Calculator = {

  {
  function numAdd(num1, num2)
    {
    var numSum = num1 + num2;
    return numSum
    }

  function numSubtract(num1, num2)
    {
    var numDifference = num1 - num2;
    return numDifference
    }

  function numMulitply(num1, num2)
    {
    var numMultipy = num1 * num2;
    return numMulitply
    }

  function numDivide (num1, num2)
    {
    var numDivide = num1 / num2;
    return numDivide
    }
  }

  run_calc: function (){
    var num1 = prompt("Enter first number:")
    var num2 = prompt("Enter second number:")
    var operation = prompt("Do you want to add, subtract, multiply or divide?")
    if(operation = add)
      {
      then function numAdd(num1, num2)
      }
    else(operation = subtract)
      {
      then function numDifference(num1, num2)
      }
    else(operation = multiply)
      {
      then function = numMultiply(num1, num2)
      }
    else(operation = divide)
      {
      then function = numDivide(num1, num2)
      }
  }

}

Calculator.run_calc();