const express = require('express');
var favicon = require('serve-favicon');
var path = require('path')

const app = express();
const port = 4000;


app.use(favicon(__dirname + '/favicon.ico'));

app.get('/musician', (req, res) => {
    res.send('<h1>Kem</h1><p>One of my favorite musicians is Kem; an R&B singer/songwriter.</p>');
});

app.get('/tvseries.html', (req, res) => {
    res.send('<h1>Black Mirror</h1><p>Black Mirror is my favorite TV series because of its unique episodes involving strange futuristic ideas.</p>');
});

app.get('/film', (req, res) => {
    res.send('<h1>Prometheus</h1><p>Prometheus is my favorite film because of it deals with space, aliens, and horror.</p>');
});

// Start server
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
