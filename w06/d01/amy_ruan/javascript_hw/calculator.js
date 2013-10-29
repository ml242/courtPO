var calculator = {
 convert: function() {
  this.getFirstNumber()
  this.getOperation()
  this.getSecondNumber()


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
  case "sqrt":
    var answer = Math.sqrt(calculator.firstNumber);
    break;
  case "modulus":
    var answer = (calculator.firstNumber)%(calculator.secondNumber);
    break;
  default:
    var answer = "Did you spell your operations correctly?"
  }
  return console.log(answer)
 },

 getOperation: function() {
  this.operation = prompt("What operation? [add, subtract, multiply, divide, modulus, sqrt")
 },
 getFirstNumber: function() {
  this.firstNumber = parseFloat(prompt("Enter first number"));
 },
 getSecondNumber: function() {
  this.secondNumber = parseFloat(prompt("Enter second number (leave blank if sqrt)"));
 }
}