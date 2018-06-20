console.log('loops');

for (var i = 0; i < 20; i++) {
  
  if (i % 2 === 0) {
    console.log(i + ' is even');
  } else {
    console.log(i + ' is odd');
  }

}

for (var i = 0; i <= 10; i++) {
  
  // console.log('5 x ' + i + ' = ' + i * 5);

  for (var j = 0; j <= 10; j++) {
    console.log(i + ' x ' + j + ' = ' + i * j);
  }

}

// for (var i = 0; i <= 10; i++) {
  
//   console.log('6 x ' + i + ' = ' + i * 6);

// }

var colour1 = 'red';

var colour3 = 'blue';

var colours = ['red','green','blue','mistyrose'];
var suffix = ['st', 'nd', 'rd', 'th', 'th']

for (var i = 0; i < colours.length; i++) {

  // console.log('my #' + (i+1) + ' choice is ' + colours[i]);  
  console.log('my ' + (i+1) + suffix[i] + ' choice is ' + colours[i]);  
}

// console.log('my #1 choice is ' + colours[0]);
// console.log('my #2 choice is ' + colours[1]);
// console.log('my #3 choice is ' + colours[2]);


