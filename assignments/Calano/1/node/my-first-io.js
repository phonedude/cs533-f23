const fs = require('fs')

let path = process.argv[2]
const fileStr = fs.readFileSync(path, 'utf8')
const lines = fileStr.split('\n')

console.log(lines.length - 1)