const fs = require('fs')
const http = require('http')


const fileStream = fs.createReadStream(process.argv[3], 'utf8')

const server = http.createServer((req, res) => {
  fileStream.pipe(res)
})

server.listen(process.argv[2])