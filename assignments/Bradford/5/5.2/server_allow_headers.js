const express = require('express');
const {createReadStream} = require('fs')

const app = express()

app.get('/', (req, res) => {
    res.setHeader('Access-Control-Allow-Origin', 'http://localhost:8000')
    res.setHeader('Access-Control-Expose-Headers', 'X-CS533F23-MOVIE, X-CS533F23-BAND, X-CS533F23-SHOW');
    res.setHeader('X-CS533F23-MOVIE', 'Everything Everywhere All at Once')
    res.setHeader('X-CS533F23-BAND', 'Jukebox the Ghost')
    res.setHeader('X-CS533F23-SHOW', 'The Bear')
    res.write("<h1>Part 5.2</h1>")
    res.end();
})

app.listen(8080)