
// iife
(function () {

var searchForm = document.querySelector('.search-form');
var searchBar = document.querySelector('.search-bar');
var resultsDiv = document.querySelector('.results');

// var app = {
//   searchForm: document.querySelector('.search-form'),
//   searchBar: document.querySelector('.search-bar'),
//   doSomething: function() {}
// }

/*
var sayHi = function() {
  console.log('hi');
}

var sayHi = () => {
  console.log('hi');
}

var sayHi = () => console.log('hi')

var sayHi = function(name) {
  console.log('hi ' + name);
}

var sayHi = name => console.log('hi ' + name)
var sayHi = (firstname, lastname) => console.log(`hi ${name}`)

var increment = function(num) {
  return num + 1;
}

var increment = num => num + 1
*/

function handleSubmit(event) {
  event.preventDefault();
  
  const options = {
    url: `http://omdbapi.com/?s=${ searchBar.value }&apikey=2f6435d9`,
    method: 'get',
    dataType: 'json' 
  }

  // callback has a signature
  const showSearchResults = function(response) {
    const movies = response.Search;
    movies.forEach(function(movie) {
      var paraElem = document.createElement('p');
      paraElem.textContent = movie.Title;
      resultsDiv.appendChild( paraElem );
    })
  }

  // send a request to omdbapi here
  $.ajax(options).done(showSearchResults)
}

searchForm.addEventListener('submit', handleSubmit);


})();