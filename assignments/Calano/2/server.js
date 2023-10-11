import express from 'express'
import cookieParser from 'cookie-parser'
import { createReadStream } from 'fs'

import { dirname } from 'path'
import { fileURLToPath } from 'url'
const __dirname = dirname(fileURLToPath(import.meta.url))

const app = express()
app.use(cookieParser())
app.use(express.static(__dirname + "/public"))

app.get('/', (_, res) => {
  createReadStream('index.html').pipe(res)
})
app.get('/band', (_, res) => {
  createReadStream('band.html').pipe(res)
})

app.get('/movie', (_, res) => {
  createReadStream('movie.html').pipe(res)
})

app.get('/tv', (_, res) => {
  createReadStream('tv.html').pipe(res)
})

app.listen(8080);
console.log('Server started at http://localhost:8080')
