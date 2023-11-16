import express from 'express'
import { createReadStream, readFileSync } from 'fs'

import { dirname } from 'path'
import { fileURLToPath } from 'url'
const __dirname = dirname(fileURLToPath(import.meta.url))

// Producer server
const producer = express()
producer.use(express.static(__dirname))

producer.get('/users/david/favorites', (req, res) => {
  res.setHeader('Access-Control-Allow-Origin', 'http://localhost:9000')
  res.setHeader('X-CS533f23-band', 'Zager & Evans')
  res.setHeader('X-CS533f23-movie', 'The Matrix')
  res.setHeader('X-CS533f23-tv', 'Halt and Catch Fire')
  res.setHeader('Access-Control-Expose-Headers', 'X-CS533f23-band, X-CS533f23-movie, X-CS533f23-tv')

  createReadStream('data.json', 'utf8').pipe(res)
})
producer.listen(9001, () => console.log('Producer server started at http://localhost:9001'))


// Consumer server
const consumer = express()
consumer.use(express.static(__dirname))

consumer.get('/', (req, res) => {
  try {
    createReadStream('consumer.html').pipe(res)
  } catch (e) { console.log(e.message) }
})
consumer.listen(9000, () => console.log('Consumer server started at http://localhost:9000'))