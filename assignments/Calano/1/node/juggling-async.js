const http = require('http')

const urls = [
  process.argv[2],
  process.argv[3],
  process.argv[4]
]

urls.forEach(url => {
  const dataItems = []

  http.get(url, (response) => {
    response.on('data', data => dataItems.push(data.toString()))

    response.on('end', () => {
      const dataString = dataItems.join('')
      console.log(`${dataString}`)
    })
  })
})