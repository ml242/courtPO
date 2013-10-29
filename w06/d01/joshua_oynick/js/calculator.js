// In your own folder, create a calculator.js file
// Create a calculator object in JavaScript.
// Requirements:
// Prompt the user to enter an operator and two operands.
// Support a minimum of following operations: addition, subtraction, multiplication, and division.
// Output may appear in the console or in an alert.
// Bonus:
// Support the modulus operator.
// Support the square root operator.
// Support more than two operands.

calculator = new Object();

var operator = prompt("Please indicate which operator you would like to use: +, -, *, or /.")

var operand1 = parseInt(prompt("Please enter first operand."))

var operand2 = parseInt(prompt("Please enter second operand."))

if (operator === "+") {
  "Answer: " + alert(operand1 + operand2)
} else if (operator === "-") {
  "Answer: " + alert(operand1 - operand2)
} else if (operator === "*") {
  "Answer: " + alert(operand1 * operand2)
} else if (operator === "/") {
  "Answer: " + alert(operand1 / operand2)
}

