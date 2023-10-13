const express = require("express");
const favicon = require('serve-favicon')
const {createReadStream} = require('fs');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.urlencoded({extended: false}))
app.use(favicon(__dirname + '/img/favicon.ico'));

app.get('/', (req, res) => {
    createReadStream('html/index.html').pipe(res)
});

app.get('/jukebox', (req, res) => {
    createReadStream('html/jukebox.html').pipe(res)
});

app.get('/bear', (req, res) => {
    createReadStream('html/bear.html').pipe(res)
});

app.get('/everything', (req, res) => {
    createReadStream('html/everything.html').pipe(res)
});

app.listen(4000);
console.log("Listening on port 4000");