const http = require('http')

const url = process.argv[2]

http.get(url, (response) => {
  response.on('data', data => console.log(data)).setEncoding('utf8')
  response.on('error', error => console.error(error)).setEncoding('utf8')
})