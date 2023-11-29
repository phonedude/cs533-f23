import express from 'express'
import { createReadStream, readFileSync } from 'fs'

import { dirname } from 'path'
import { fileURLToPath } from 'url'
const __dirname = dirname(fileURLToPath(import.meta.url))

// Embed server
const embedSrv = express()
embedSrv.use(express.static(__dirname))

embedSrv.get('/', (req, res) => {
  // res.setHeader('Content-Security-Policy', "frame-src 'self'")
  
  createReadStream('index.html').pipe(res)
  
  // let indexFile = readFileSync('index.html')
  // res.send(indexFile)
})
embedSrv.listen(9000, () => console.log('Embed server started at http://localhost:9000'))