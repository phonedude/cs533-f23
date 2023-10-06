var http = require('http');
var fs = require('fs');
var url = require('url');
var express = require('express')
var path = require('path')
const app = express();

const hostname = 'localhost';
const port = 8080;


const server = http.createServer(function (req, res) {
  var q = url.parse(req.url, true);
  var filename = "." + q.pathname;
  app.use(express.static('public/css'))
  fs.readFile(filename, function(err, data) {
    if (err) {
      res.writeHead(404, {'Content-Type': 'text/html'});
      return res.end("404 Not Found");
    }
    else if (req.url === '/style.css') 
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write(data);
    return res.end();
  });
})


server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
