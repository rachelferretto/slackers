// 1. Build your own concatenation
// Write a function named combineWords that: 
// - return a new string that is the combination of the two parameters
// Example: combineWords('dog', 'house') => 'doghouse'

var combineWords = function(word1, word2) {
  return word1 + word2;  
}

var newWord = combineWords('slack', 'ers');
console.log(newWord);

console.log( combineWords('cake','pudding') );

// 2. Write a function named calculateAge that:
// - takes 2 arguments: birth year, current year.
// - calculates the 2 possible ages based on those years.
// outputs the result to the screen like so: "You are either 100 or 101"
// - Call the function three times with different sets of values.
var calculateAge = function(birthYear, currYear) {
  var age = currYear - birthYear;
  var ageBeforeBirthday = age - 1;
  console.log('you are either ' + ageBeforeBirthday + ' or ' + age);
}

calculateAge(2000, 2018);
calculateAge(1945, 2018);


var composers = ['chopin', 'mozart', 'beethoven']; // => [6, 6, 9]
//  3. Write a function `lengths` that accepts a single parameter as an argument, namely
// an array of strings. The function should return an array of numbers where each
// number is the length of the corresponding string.

var lengths = function(arrOfStrings) {
  // make a new empty container
  var newArr = [];
  
  for (var i = 0; i < arrOfStrings.length; i++) {
    // add it to the empty
    newArr.push( arrOfStrings[i].length )
  }
  
  // return the container
  return newArr
}

// lengths(composers) // => [6, 6, 9]
var languages = ['js', 'ruby', 'css'];
lengths(languages) // => [2, 4, 3]

