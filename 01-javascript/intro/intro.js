console.log('hello again javascript');

// write a program that will ask for your name
// it will then display 'hello name' where 'name' is the name you entered.

// - how can I take input???
// - how am I going to show the greeting???
// - how to join strings together and how to store the input name???

var userName = prompt('what is your name?'); // camel case
var userAge = prompt('how old are you?');

console.log('hello ' + userName);

if (userAge === 50) {
  console.log('hurray 50');
} else if (userAge < 50) {
  console.log('congrats you are youngish');
} else {
  console.log('oh dear you are old');
} 