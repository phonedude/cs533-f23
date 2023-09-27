const http = require('http')

const url = process.argv[2]

const dataItems = []

http.get(url, (response) => {
  response.on('data', data => dataItems.push(data.toString()))

  response.on('end', () => {
    const dataString = dataItems.join('')
    console.log(`${dataString.length}\n${dataString}`)
  })
})