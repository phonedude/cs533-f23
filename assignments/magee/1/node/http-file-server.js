const http = require('http');
const fs = require('fs');

const portNumber = process.argv[2];
const fileLocation = process.argv[3];

const server = http.createServer(function (request, response) {

        const fileStream = fs.createReadStream(fileLocation);
        fileStream.pipe(response);
});

server.listen(portNumber, () => {
    console.log(`Server is running on port ${portNumber}`);
});

