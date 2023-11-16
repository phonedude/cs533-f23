import express from 'express'
import { createReadStream } from 'fs'

import { dirname } from 'path'
import { fileURLToPath } from 'url'
const __dirname = dirname(fileURLToPath(import.meta.url))

// Proxy passthrough
const proxy = express()
// proxy.disable('X-Frame-Options')
// proxy.use((req, res, next) => {
//   req.removeHeader('X-Frame-Option')
//   next()
// })

proxy.get('/', (req, res) => {
    const { url } = req.query
    fetch(url)
        .then(r => r.text())
        .then(body => res.send(body))
        .catch(e => { console.log(e.message) })
})
proxy.listen(9666)

// Main portal
const app = express()
app.use(express.static(__dirname))
app.get('/', (req, res) => { createReadStream('parent.html').pipe(res) })
app.listen(9000)