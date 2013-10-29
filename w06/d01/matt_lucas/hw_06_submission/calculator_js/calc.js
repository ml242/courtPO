a = parseInt(prompt("What is the first number you would like to operate on?"));
operation = (prompt("Would you like to add, subtract, multiply, or divide?"));
b = parseInt(prompt("What is the second number you would like to operate on?"));

function add(a,b) {
    return (a + b);
};
function subtract(a,b) {
    return (a - b);
};
function multiply(a,b) {
    return (a * b);
};
function divide(a,b) {
    return (a / b);
};

if (operation == "add") {
    console.log(add(a,b));
};

if (operation == "subtract") {
    console.log(subtract(a,b));
};

if (operation == "multiply") {
    console.log(multiply(a,b));
};

if (operation == "divide") {
    console.log(divide(a,b));
};