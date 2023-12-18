const http = require('http');
const fs = require('fs');
const path = require('path');

const htmlFilesDirectory = path.join(__dirname, 'frame-path-attack');

const server = http.createServer((req, res) => {
    let filePath = path.join(htmlFilesDirectory, req.url);

    if (!path.extname(filePath)) {
        filePath = filePath + '.html';
    }

    fs.access(filePath, fs.constants.F_OK, (err) => {
        if (err) {
            res.writeHead(404, { 'Content-Type': 'text/html' });
            res.end('File Not Found');
        } else {
            const fileStream = fs.createReadStream(filePath);
            fileStream.pipe(res);
        }
    });
});

server.listen(8080, () => {
    console.log('Server is running on http://localhost:8080/');
});