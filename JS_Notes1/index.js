console.log('Hello World');

// We use a variable to store data temporarily in a computer's memory.

let firstName = 'Can';
console.log(firstName);

const interestRate = 0.3;
console.log(interestRate);

//There are 2 types of variables. One is primitive / value types which are string, boolean, null, number, undefined
// and the other is reference types, which are object, array and functions.

let age = 27;
let isApproved = true;

//Javascript is dynamically-typed. The type of a variable can change later in the codebase.

let person = {
    firstName: 'Can',
    age: 27
};

person.firstName = 'Ozkan';

console.log(person);
console.log(person.age);

let selectedColors = ['red', 'blue'];
console.log(selectedColors);
console.log(selectedColors[0]);

selectedColors[2] = 'green';
console.log(selectedColors);
console.log(selectedColors.length);

//Performing a task
//Here in this function, name is the parameter.
function greet(name){
    console.log('Hello ' + name);
}

//Here in this function calling, Betul is an argument to the greet function
greet('Betul');
greet('Yakup');

//Calculating a value
function square(number){
    return number * number;
}

console.log(square(2));