var express = require('express');
var cookieParser = require('cookie-parser');
const port = 4000;

var app = express();
app.use(cookieParser());

app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});

app.get('/ariana-grande.html', (req, res) => {
  res.sendFile(__dirname + '/ariana-grande.html');
});

app.get('/coldplay.html', (req, res) => {
  res.sendFile(__dirname + '/coldplay.html');
});

app.get('/suits.html', (req, res) => {
  res.sendFile(__dirname + '/suits.html');
});

app.listen(port, () => {
  console.log(`Assignment 2 server listening at http://localhost:${port}`)
})