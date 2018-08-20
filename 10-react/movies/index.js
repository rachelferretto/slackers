const express = require('express')
const axios = require('axios')
const app = express()
const logger = require('./logger')
const PORT = 7777

app.set('view engine', 'ejs')

// request
//   ||
//   \/
app.use(logger)
//   ||
//   \/
app.use(express.static('public'))
//   ||
//   \/
app.get('/', (req, res) => {
  res.render('index')
})
//   ||
//   \/
app.get('/movies', (req, res) => {
  const title = req.query.title
  const url = `http://omdbapi.com/?t=${ title }&apikey=2f6435d9`

  axios.get(url)
    .then(omdbRes => {
      res.render('show', omdbRes.data)
    })
})
//   ||
//  404

app.listen(PORT, () => {
  console.log(`listening at port ${PORT}`)
})


