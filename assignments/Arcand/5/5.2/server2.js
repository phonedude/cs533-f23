const http = require('http');
const fs = require('fs');
const path = require('path');

const htmlFilesDirectory = path.join(__dirname, '');
console.log(htmlFilesDirectory);

const server = http.createServer((req, res) => {
    let filePath = path.join(htmlFilesDirectory, req.url);

    if (req.url === '/') {
        filePath = path.join(htmlFilesDirectory, 'index.html');
        console.log(filePath);
    }
	
	const three_custom_HTTP_response_headers_are_blocked = false;
	res.setHeader('X-Headers-Blocked', 'false');

    if (three_custom_HTTP_response_headers_are_blocked === true) {
        console.log("three_custom_HTTP_response_headers_are_blocked");
    } else {
        console.log("three_custom_HTTP_response_headers_are_allowed");
        res.setHeader('X-CS533f23-TVSeries', 'Ozark');
        res.setHeader('X-CS533f23-Musician', 'DJ Shadow');
        res.setHeader('X-CS533f23-BookSeries', 'Game of Thrones');
    }

    fs.access(filePath, fs.constants.F_OK, (err) => {
        if (err) {
            res.writeHead(404, { 'Content-Type': 'text/html' });
            res.end(`${filePath} - File Not Found`);
        } else {
            console.log(filePath);
            const fileStream = fs.createReadStream(filePath);
            fileStream.pipe(res);
        }
    });
});

server.listen(8081, () => {
    console.log('Server 2 is running on http://localhost:8081/');
});
