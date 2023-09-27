const http = require('http');
const url = require('url');

let portNumber = process.argv[2];

const server = http.createServer(function(request, response) {
    if(request.method === 'GET') {
        response.writeHead(200, {'Content-Type': 'application/json'});
        let parsed = url.parse(request.url, true);
        let date = new Date(parsed.query['iso']);
        if (parsed.pathname === "/api/parsetime") {
            date = '{"hour": ' + date.getHours() + ', "minute": ' + date.getMinutes() + ', "second": ' + date.getSeconds() + '}';
        }
        else if(parsed.pathname === "/api/unixtime") {
            date = '{"unixtime": ' + Date.parse(date.toISOString()) + '}';
        }
        response.end(date);
    }
});

server.listen(portNumber)