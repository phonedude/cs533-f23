import express from 'express'
import fs from 'fs'
import md5 from 'md5'

import { dirname } from 'path'
import { fileURLToPath } from 'url'
const __dirname = dirname(fileURLToPath(import.meta.url))

const fingerprintSrv = express()
fingerprintSrv.use(express.static(__dirname))
fingerprintSrv.use(express.static(__dirname + "/public"))

fingerprintSrv.get('/', (req, res) => {
  
  let userHash = md5(`${req.ip} ${req.headers['accept']} ${req.headers['user-agent']} ${req.headers['accept-encoding']} ${req.headers['accept-language']}`)
  console.log(`${userHash} arrived! (${req.ip} | ${req.headers['user-agent']})`)
  
  fs.appendFileSync('visitors.log', `${userHash}\n`)

  const fingerprints = fs.readFileSync('visitors.log', { encoding: 'utf-8'}).toString().split('\n')
  const visits = fingerprints.filter(f => f === userHash).length

  if (visits > 2) {
    fs.createReadStream('band.html').pipe(res)
  } else if (visits > 1) {
    fs.createReadStream('tv.html').pipe(res)
  } else {
    fs.createReadStream('movie.html').pipe(res)
  }
})

fingerprintSrv.listen(9000, () => console.log('Fingerprinting server started at http://localhost:9000'))