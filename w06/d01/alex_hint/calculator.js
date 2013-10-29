// Requirements:
// Prompt the user to enter an operator and two operands.
// Support a minimum of following operations: addition, subtraction, multiplication, and division.
// Output may appear in the console or in an alert.

var operator = prompt("add, subtract, multiply or divide?");
var userInputOne = parseInt(prompt("please enter first value"), 10);
var userInputTwo = parseInt(prompt("please enter second value"), 10);

switch(operator) {
  case 'add':
    result = userInputOne + userInputTwo;
    alert("Your answer is " + result);
    break;
  case 'subtract':
    result = userInputOne - userInputTwo;
    alert("Your answer is " + result);
    break;
  case 'multiply':
    result = userInputOne * userInputTwo;
    alert("Your answer is " + result);
    break;
  case 'divide':
    result = userInputOne / userInputTwo;
    alert("Your answer is " + result);
    break;
  default:
    alert("I don't know what you mean...")
    break;
}