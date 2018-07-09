console.log('please flush after use');

var flush = function() {
  document.body.children[1].style.backgroundColor = 'mintcream'
}

var pee = function() {
  document.body.children[1].style.backgroundColor = 'green' 
}

// document.body.children[1].addEventListener('click', pee)
document.querySelector('.seat').addEventListener('click', pee)

// document.body.children[0].children[0].addEventListener('click', flush)
document.querySelector('.flush-btn').addEventListener('click', flush)

console.log('goodbye')

