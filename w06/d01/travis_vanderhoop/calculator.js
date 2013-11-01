var calculator = {

  calculate: function(){

    var operator = prompt('What operation? Choose:\n\t 1 for addition\n\t 2 for subtraction\n\t 3 for multiplication\n\t or\n\t 4 for division')
    var firstValue = prompt('What is the first value?')
    var secondValue = prompt('What is the second value?')

    switch (operator)
    {
    case '1':
      var answer = firstValue+secondValue;
      debugger;
      break;
    case '2':
      var answer = firstValue-secondValue;
      break;
    case '3':
      var answer = firstValue*secondValue;
      break;
    case '4':
      var answer = firstValue/secondValue;
      break;
    default:
      alert('You entered a moronic value.');
    }

    alert('The answer is ' + answer)

  }

}
