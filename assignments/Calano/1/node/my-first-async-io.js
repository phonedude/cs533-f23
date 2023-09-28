const fs = require('fs')

let path = process.argv[2]
const fileStr = fs.readFile(path, 'utf8', (err, data) => {
  if (!err) {
    console.log(data.split('\n').length - 1)
  } else {
    console.log("")
  }
})
