const http = require('http')
const fs = require('fs')

portNumber = process.argv[2]
uri = process.argv[3]

const server = http.createServer(function (request, response) {
    let src = fs.createReadStream(uri);
    src.pipe(response)
});

server.listen(portNumber);