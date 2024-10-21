const express = require('express');
const app = express();

const http = require('http');
const fs = require('fs');
const path = require('path');
const crypto = require('crypto');
const bodyParser = require('body-parser');

app.use(express.static(__dirname + '/'));
app.use(bodyParser.urlencoded({ extend: true }));
app.engine('html', require('ejs').renderFile);
app.set('view engine', 'html');
app.set('views', __dirname);

app.use((req, res, next) => {
    res.setHeader('X-Frame-Options', 'DENY');
    res.setHeader('Content-Security-Policy', "default-src 'self'; frame-ancestors 'none';");
    next();
});




const enable_embedding = true; // Set to false to prohibit embedding



const allowedDomains = [
    "https://abril.com.br",
    "https://adobe.com",
    "https://amazon.co.uk",
    "https://asahi.com",
    "https://biglobe.ne.jp",
    "https://bloomberg.com"
];

const allowedDomainsString = allowedDomains.join(' ');

app.get('/', (req, res) => {
    res.render('embed.html', { name: 'John Doe', age: 21, enable_embedding, variableFromServer: 'Hello from server!', nonce: crypto.randomBytes(16).toString('base64'), allowedDomains });
});

app.get('/api/data', (req, res) => {
    const variableFromServer = 'Hello from server!';
    res.json({ variableFromServer, enable_embedding });
});

app.post('/endpoint', (req, res) => {
    const postData = req.body;
    console.log('Received POST data:', postData);
    res.json({ status: 'success' });
});

const server = http.createServer((req, res) => {
    if (path.normalize(decodeURI(req.url)) !== decodeURI(req.url)) {
        res.statusCode = 403;
        res.end();
        return;
    }
    let filePath = path.join(__dirname, req.url);

    if (req.url === '/') {
        filePath = path.join(__dirname, '5.3\\embed.html'); // Change this
    } else if (!path.extname(filePath)) {
        filePath = filePath + '.html';
    }

    fs.access(filePath, fs.constants.F_OK, (err) => {
        if (err) {
            res.writeHead(404, { 'Content-Type': 'text/html' });
            res.end(`${filePath} - File Not Found`);
        } else {
            fs.readFile(filePath, 'utf8', (err, data) => {
                if (err) {
                    res.writeHead(500, { 'Content-Type': 'text/html' });
                    res.end('Internal Server Error');
                } else {
                    data = data.replace('var enable_embedding = false;', `var enable_embedding = ${enable_embedding};`);
                    const nonce = crypto.randomBytes(16).toString('base64');
                    const cspHeader = `script-src 'nonce-${nonce}'`;
                    res.setHeader('Content-Security-Policy', cspHeader);
					if (enable_embedding === false) {
						res.setHeader('Content-Security-Policy', "default-src 'self'; frame-ancestors 'none';");
					} 
                    res.writeHead(200, { 'Content-Type': 'text/html' });
                    res.end(data.replace('<%= nonce %>', nonce));
                }
            });
        }
    });
});


app.use('/', (req, res, next) => {
    res.render('embed.html', { name: 'John Doe', age: 21 });
});

server.listen(8080, () => {
    console.log("allowedDomainsString =", allowedDomainsString);
    console.log('Server is running on https://localhost:8080/');
});
