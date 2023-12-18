const http = require('http')

const server = http.createServer((req, res) => {
  if (req.method === 'GET' && (req.url.indexOf('/api/parsetime') === 0 || req.url.indexOf('/api/unixtime') === 0)) {
    const i = req.url.indexOf('iso=') + 4
    const time = new Date(req.url.substring(i))

    res.writeHead(200, { 'Content-Type': 'application/json' })
    if (req.url.indexOf('/api/parsetime') === 0) {
      res.end(JSON.stringify({
        'hour': time.getHours(),
        'minute': time.getMinutes(),
        'second': time.getSeconds()
      }))
    } else {
      res.end(JSON.stringify({ 'unixtime': new Date(time).getTime() }))
    }
  }
})

server.listen(process.argv[2])