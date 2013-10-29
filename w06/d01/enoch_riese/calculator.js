function calculator() {
  var input = prompt("Please input an operator and two operands");
  var inputArray = input.split(" ");
  var operand = inputArray[0];
  var num1 = inputArray[1];
  var num2 = inputArray[2];

  switch (operand) {
    case "addition":
    console.log(num1 = num2);
    break;
    case "subtraction":
    console.log(num1 - num2);
    break;
    case "multiplication":
    console.log(num1 * num2);
    break;
    case "division":
    console.log(num1 / num2);
    break;
  }
}
