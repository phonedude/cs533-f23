const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))


app.get('/BatmanDarkKnight.html', (req, res) => {
    createReadStream('BatmanDarkKnight.html').pipe(res)
})

app.get('/Drake.html', (req, res) => {
    createReadStream('Drake.html').pipe(res)
})

app.get('/StrangerThings.html', (req, res) => {
    createReadStream('StrangerThings.html').pipe(res)
})

app.listen(4000)