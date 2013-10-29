var calculator = {
 convert: function() {
  this.getFirstNumber()
  this.getSecondNumber()
  this.getOperation()

  switch(calculator.operation){
  case "add":
    var answer = calculator.firstNumber + calculator.secondNumber;
    break;
  case "subtract":
    var answer = calculator.firstNumber - calculator.secondNumber;
    break;
  case "multiply":
    var answer = calculator.firstNumber * calculator.secondNumber;
    break;
  case "divide":
    var answer = (calculator.firstNumber)/(calculator.secondNumber);
    break;
  }
  return console.log(answer)
 },

 getOperation: function() {
  this.operation = prompt("What operation? [add, subtract, multiply, divide")
 },
 getFirstNumber: function() {
  this.firstNumber = parseFloat(prompt("Enter first number"));
 },
 getSecondNumber: function() {
  this.secondNumber = parseFloat(prompt("Enter second number"));
 }
}