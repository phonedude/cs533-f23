console.log("Begin");
const http = require('http');
const fs = require('fs');
const path = require('path');

const htmlFilesDirectory = path.join(__dirname, '');

const server = http.createServer((req, res) => {
	console.log("Starting");
	
	
    res.setHeader('Access-Control-Allow-Origin', 'http://localhost:8080');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
	
	
    let filePath = path.join(htmlFilesDirectory, req.url);

    if (req.url === '/') {
        filePath = path.join(htmlFilesDirectory, 'index.html');
    }
	console.log(filePath);
    fs.access(filePath, fs.constants.F_OK, (err) => {
        if (err) {
            res.writeHead(404, { 'Content-Type': 'text/html' });
            res.end(`${filePath} - File Not Found`);
        } else {
            const fileStream = fs.createReadStream(filePath);
            fileStream.pipe(res);
        }
    });
});

server.listen(8081, () => {
    console.log('Server 2 is running on http://localhost:8081/');
});
