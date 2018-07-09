var num1Input = document.querySelector('ul .num-input')
var num2Input = document.querySelector('.num2-input')
var resultDiv = document.querySelector('.result-div')
var calcBtn = document.querySelector('.calc-btn')

  var add = function() {
    var total = Number(num1Input.value) + Number(num2Input.value)
    resultDiv.textContent = total
  }

calcBtn.addEventListener('click', add)

