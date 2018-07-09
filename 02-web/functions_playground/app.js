
var total = doubleNum(5) + 2 + doubleNum(3);

var ingredients = []

var mixedIngredients = mix(ingredients)
var bakedCake = bake(mixedIngredients)
var product = package(bakedCake)

var product = package(bake(mix(ingredients)))


var peelBananas = function(listOfBanana, shouldPeeledBanana) {
  var peeledBananas = []
  for (var i = 0; i < listOfBanana.length; i++) {
    if (shouldPeeledBanana)
    // console.log('peeling banana at index ' + listOfBanana[i])
    peeledBananas.push(listOfBanana[i])
  }
  return peeledBananas
}


var peel = function(thing) {
  // some code here
  // returns peeledThing
}

var crack = function(thing) {
  // some code here
}

var doSomethingToEachItem = function(list, funcYouPassedIn) {
  var newList = []
  for (var i = 0; i < list.length; i++) {
    newList.push( funcYouPassedIn( list[i] ) );
  }
  return newList
}

doSomethingToEachItem(listOfEggs, crack)

var listOfWords = ['hello', 'hi', 'goodbye'];
var exclaim = function(word) {
  return word.toUpperCase() + '!'
}

var pluralizeWord = function(word) {
  // work out how to pluralize a word
  return pluralizedWord;
}

exclaim('hello') // -> HELLO!
exclaim('hi') // -> HI!
exclaim(listOfWords[0]) // -> HELLO!
exclaim(listOfWords[1]) // -> HI!

for (var i = 0; i < listOfWords.length; i++) {
  exclaim(listOfWords[i])
}



