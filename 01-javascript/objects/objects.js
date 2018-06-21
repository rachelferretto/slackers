var recipe = {
  name: 'midnight speedster',
  serves: 1,
  ingredients: ['packet of install noodle', 'water', 'chilli powder']
}

console.log(recipe.name);
console.log(recipe.serves);
console.log(recipe.ingredients.join('\n'));


var books = [
  {
    title: 'whys poignant guide to ruby',
    author: 'why_',
    alreadyRead: true
  },
  {
    title: 'poodr',
    author: 'sandy metz',
    alreadyRead: false
  }
]; 

for (var index = 0; index < books.length; index++) {

  var book = books[index];

  if (book.alreadyRead) {
    console.log('you already read ' + book.title);
  } else {
    console.log('you may want to ready ' + book.title);
  }
}

var film = {
  title: 'sharknado',
  duration: 100,
  stars: ['sharks', 'that guy from 90210']
}


var movieInfo = function(movie) { // parameter
  return movie.title + ' last for ' + movie.duration + ' minutes stars ' + movie.stars.join(', ');
}

console.log( movieInfo(film) );
// f(x)




