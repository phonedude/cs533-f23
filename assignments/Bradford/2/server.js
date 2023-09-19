const express = require("express");
const {createReadStream} = require('fs');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.urlencoded({extended: false}))

app.get('/', (req, res) => {
    createReadStream('index.html').pipe(res)
});

app.get('/jukebox', (req, res) => {
    createReadStream('jukebox.html').pipe(res)
});

app.get('/bear', (req, res) => {
    createReadStream('bear.html').pipe(res)
});

app.get('/everything', (req, res) => {
    createReadStream('everything.html').pipe(res)
});


app.listen(4000);
console.log("Listening on port 4000");