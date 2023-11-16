import express from 'express'
import { createReadStream } from 'fs'

import { dirname } from 'path'
import { fileURLToPath } from 'url'
const __dirname = dirname(fileURLToPath(import.meta.url))

const app = express()
app.use(express.static(__dirname))

app.get('/:url', (req, res) => {
  try {
    createReadStream(`framable/${req.params['url']}.html`).pipe(res)
  } catch (e) { console.log(e.message) }
})
app.listen(9000, () => console.log('Server started at http://localhost:9000'))
