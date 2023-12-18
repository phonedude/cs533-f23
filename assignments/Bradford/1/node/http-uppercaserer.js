const map = require('through2-map');
const http = require('http');

let portNumber = process.argv[2];

const server = http.createServer(function (inStream, outStream) {
    if (inStream.method === 'POST'){
        inStream.pipe(map(function (chunk) {
            return chunk.toString().toUpperCase();
        })).pipe(outStream);
    }
}).listen(portNumber);