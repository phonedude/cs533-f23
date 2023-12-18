const express = require('express');
const {createReadStream} = require('fs')

const app = express()

app.get('/', (req, res) => {
    res.setHeader('Access-Control-Allow-Origin', 'http://localhost:8000')
    createReadStream('favoritethings.json').pipe(res)
})

app.listen(8080)