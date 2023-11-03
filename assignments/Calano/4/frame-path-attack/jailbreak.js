import express from 'express'
import { createReadStream } from 'fs'

import { dirname } from 'path'
import { fileURLToPath } from 'url'
const __dirname = dirname(fileURLToPath(import.meta.url))

const jail = express()
jail.use(express.static(__dirname))
jail.get('/', (_, res) => {  
  createReadStream(`jail.html`).pipe(res)
})
jail.listen(9000, () => { console.log('Server started at http://localhost:9000') })

const jailCell = express()
jailCell.use(express.static(__dirname))
jailCell.get('/jailCell', (_, res) => {
  createReadStream(`jailCell.html`).pipe(res)
})
jailCell.listen(9001, () => { console.log('Server started at http://localhost:9001') })
