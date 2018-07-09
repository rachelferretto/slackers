console.log('task manager');

// search for elements 
var todoItems = document.querySelectorAll('.todo-item'); // returns elements within an array
var completedCount = document.querySelector('.completed-count'); // return single element
var footer = document.querySelector('footer');
var newTodoInput = document.querySelector('.new-todo-input');
var resetBtn = document.querySelector('footer button'); // first step
var newTodoInput = document.querySelector('.new-todo-input');
var addTodoBtn = document.querySelector('form button');
var todoList = document.querySelector('.todo-list');

addTodoBtn.addEventListener('click', function(event) {
  event.preventDefault();
  
  // get value from input
  var newTodoValue = newTodoInput.value
  // create new li 
  var newLi = document.createElement('li')
  // set li text content to value
  newLi.textContent = newTodoValue
  // add todo-item class to newLi
  newLi.classList.add('todo-item')
  // prepare it for the real world
  // newLi.addEventListener('click', markComplete)

  // append it to ul
  todoList.appendChild(newLi)
  // set input value to empty string
  newTodoInput.value = ''
})

var markComplete = function(event) {
  if (event.target.classList.contains('todo-item') === false) {
    return;
  }

  event.target.classList.toggle('completed');
  completedCount.textContent = document.querySelectorAll('.completed').length;
  
  if (Number(completedCount.textContent) === todoItems.length) {
    footer.classList.remove('hidden');
  } else {
    footer.classList.add('hidden');
  }
}

todoList.addEventListener('click', markComplete)


var resetTodos = function() {
  document.querySelectorAll('.todo-item').forEach(function(item) {
    item.classList.remove('completed')
  })  
}

resetBtn.addEventListener('click', resetTodos)





