const express = require('express');
const {createReadStream} = require('fs')

const app = express()

app.get('/', (req, res) => {
    createReadStream('index.html').pipe(res)
})

app.listen(8080)