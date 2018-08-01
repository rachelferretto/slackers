// quiz 1

function test() {
  console.log(a);
  console.log(foo());
  
  var a = 1;
  function foo() {
     return 2;
  }
}

test();

// quiz 2

var me = 1;
function findme() {
  if (me) {
    var me = 100;
    console.log(me); 
  }
  console.log(me); 
}
findme();