const request = require('request')
const _ = require('lodash')

const url = 'https://jsonplaceholder.typicode.com/users'

request(url, function(err, response, body) {
  const randomUser = _.sample(JSON.parse(body))
  console.log(randomUser)
})